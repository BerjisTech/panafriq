import { ProductCategoryState } from "./productCategorySlice";

const API_URL = "http://localhost:3000/product-categories";

export async function fetchProductCategories() {
    return fetch(`${API_URL}/posts.json`,
        {
            method: "GET",
            headers: {
                "Content-Type": "application/json"
            }
        })
        .then(response => response.json())
        .catch((error) => {
            console.log(error);
            return {} as ProductCategoryState;
        });

}
