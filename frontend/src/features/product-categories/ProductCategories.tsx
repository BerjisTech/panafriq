import React, { useEffect } from 'react'
import { AppDispatch } from '../../app/store'
import { useDispatch } from 'react-redux'
import { useAppDispatch, useAppSelector } from '../../app/hooks'
import { fetchProductCategories } from './productCategoryAPI'
import { fetchProductCategoriesAsync, selectProductCategories, selectProductCategoriesStatus, Statuses } from './productCategorySlice'

function ProductCategory() {
  const productCategories = useAppSelector(selectProductCategories)
  const status = useAppSelector(selectProductCategoriesStatus)
  const dispatch = useDispatch<AppDispatch>()

  useEffect(() => {
    dispatch(fetchProductCategoriesAsync())
  }, [dispatch])

  let contents;

  if (status !== Statuses.Success) {
    contents = <div>{status}</div>
  } else {
    contents = <div className='card'>
      <div className='card-body'>
        <h3>{status}</h3>
        {productCategories && productCategories.length > 0 && productCategories.map(ProductCategory => <div key={productCategory.id}>{productCategory.name}</div>)}
      </div>
    </div>
  }

  return (
    <div>
      <div>Product Categories</div>
      <h3>{ }</h3>
    </div>
  )
}

export default ProductCategory
