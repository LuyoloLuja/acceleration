module.exports = function Nandis(pool){

    async function selectProduct(product){
        if(product){
            let setProduct = await pool.query('SELECT product_name FROM products WHERE product_name = $1', [product]);

            if(setProduct.rowCount === 0){
                await pool.query('INSERT INTO products (product_name) VALUES ($1)', [product])
            }else {
                await pool.query('UPDATE products SET product_price = product_price + product_price WHERE product_name = $1', [product])
            }
        }
    }

    async function getSelectedProducts(){
        let products = await pool.query('SELECT product_name FROM products');
        return products.rows;
    }

    function customer(name, email, message){
        if(name, email, message){
            return "Thank you. We have received your enquiry, we'll get back to you!"
        }
    }

    return {
        customer,
        selectProduct,
        getSelectedProducts
    }
}