import { createAsyncThunk, createSlice } from "@reduxjs/toolkit";
import produce from "immer";
import { RootState } from "../../app/store";
import { fetchProductCategories } from "./productCategoryAPI";

export enum Statuses {
    Initial = "Not Fetched",
    Loading = "Loading",
    Success = "Success",
    Error = "Error",
    NotFound = "Not Found",
    NotAuthorized = "Not Authorized",
    NotAvailable = "Not Available",
    Deleted = "Deleted"
}

export interface ProductCategoryState {
    name?: string;
}

export interface ProductCategoriesState {
    productCategories: ProductCategoryState[],
    status: string
}

const initialState: ProductCategoriesState = {
    productCategories: [
        {
            name: ""
        }
    ],
    status: Statuses.Initial
}

export const fetchproductCategoriesAsync = createAsyncThunk(
    'productCategories/fetchProductCategory',
    async () => {
        const response = await fetchProductCategories();
        const data = await response.json();
        return data;
    }
)

export const ProductCategorySlice = createSlice({
    name: "productCategories",
    initialState,
    reducers: {},
    extraReducers: (builder) => {
        builder
            // While you wait
            .addCase(fetchproductCategoriesAsync.pending, (state, action) => {
                return produce(state, draftState => {
                    draftState.status = Statuses.Loading;
                })
            })
            // When you get the data
            .addCase(fetchproductCategoriesAsync.fulfilled, (state, action) => {
                return produce(state, draftState => {
                    draftState.status = Statuses.Success;
                    draftState.productCategories = action.payload;
                })
            })
            // When you get an error
            .addCase(fetchproductCategoriesAsync.pending, (state, action) => {
                return produce(state, draftState => {
                    draftState.status = Statuses.Error;
                })
            })
    }
})

export const {} = ProductCategorySlice.actions;
export const selectProductCategories = (state: RootState) => state.productCategories.productCategories;
export const selectStatus = (state: RootState) => state.productCategories.status;
export default ProductCategorySlice.reducer;

