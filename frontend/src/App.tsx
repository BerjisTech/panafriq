import React from 'react';
// import logo from './logo.svg';
// import { Counter } from './features/counter/Counter';
import './App.css';
import ProductCategories from './features/product-categories/ProductCategories';

function App() {
  return (
    <div className="App">
      {/*  ProductCategory component */}
      <ProductCategories />
    </div>
  );
}

export default App;
