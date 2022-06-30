import { createAsyncThunk, createSlice } from '@reduxjs/toolkit';
import produce from "immer";
import { RootState } from "../../app/store"
import { fetchProductCategories } from './productCategoryAPI'

export enum Statuses {
    Initial = "Not Fetched",
    Loading = "Loading...",
    UpToDate = "Up To Date",
    Deleted = "Deleted",
    Error = "Error"
}

export interface ProductCategoryFormData {
    productCategory: {
        category?: string;
    }
}

export interface ProductCategoryState {
    category?: number;
}

export interface ProductCategoriesState {
    productCategories: ProductCategoryState[];
    status: string;
}

const initialState: ProductCategoriesState = {
    productCategories: [
        {
            category: 0
        }
    ],
    status: Statuses.Initial
}

export const fetchProductCategoriesAsync = createAsyncThunk(
    'productCategories/fetchProductCategories',
    async () => {
        const response = await fetchProductCategories();
        return response;
    }
)

export const productCategorySlice = createSlice({
    name: "productCategories",
    initialState,
    /**
     * Synchronous actions
     */
    reducers: {},
    extraReducers: (builder) => {
        builder
            .addCase(fetchProductCategoriesAsync.pending, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Loading;
                })
            })
            .addCase(fetchProductCategoriesAsync.fulfilled, (state, action) => {
                return produce(state, (draftState) => {
                    draftState.productCategories = action.payload;
                    draftState.status = Statuses.UpToDate;
                })
            })
            .addCase(fetchProductCategoriesAsync.rejected, (state) => {
                return produce(state, (draftState) => {
                    draftState.status = Statuses.Error;
                })
            })
    }
})

export const { } = productCategorySlice.actions;

export const selectProductCategories = (state: RootState) => state.productCategories.productCategories;

export const selectStatus = (state: RootState) => state.productCategories.status;

export default productCategorySlice.reducer;
