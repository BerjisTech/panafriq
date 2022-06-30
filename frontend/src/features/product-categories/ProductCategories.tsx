import React, { useEffect, useState } from 'react';
import { useDispatch } from 'react-redux';
import { useAppSelector } from "../../app/hooks";
import { AppDispatch } from '../../app/store';
import ProductCategory from './ProductCategory';
import ProductCategoryForm from './ProductCategoryForm';
import { fetchProductCategoriesAsync, selectProductCategories, selectStatus, Statuses } from './productCategorySlice';

function ProductCategories() {
  const productCategories = useAppSelector(selectProductCategories);
  const status = useAppSelector(selectStatus)
  const dispatch = useDispatch<AppDispatch>();

  const [productCategoryToEdit, setProductCategoryToEdit] = useState(0);

  useEffect(() => {
    dispatch(fetchProductCategoriesAsync());
  }, [dispatch])

  let contents;

  if (status !== Statuses.UpToDate) {
    contents = <div>{status}</div>
  } else {
    contents = <div className="card">
      <div className="card-body">
        <h3>{status}</h3>
        {productCategories && productCategories.length > 0 && productCategories.map(productCategory => {
          return <div key={productCategory.id} style={{ margin: "5em" }}>
            <ProductCategory
              dispatch={dispatch}
              productCategory={productCategory}
            />
          </div>
        })}
      </div>
    </div>
  }

  return <div><h1>ProductCategories</h1>
    {contents}
  </div>
}

export default ProductCategories;
