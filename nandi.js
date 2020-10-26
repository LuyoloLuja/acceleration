module.exports = function Nandis(pool){

    async function buyDresses(dress, size, price){
        if(dress, size, price){
            // selecting dress_number === which dress(foreign key),
            await dressType(dress);
            let dressSize = await pool.query('SELECT size FROM women_dresses_info WHERE size = $1', [size]);
            let dressPrice = await pool.query('SELECT women_dresses.price FROM women_dresses WHERE women_dresses.price = $1', [price]);
            
            if(selectDress.rowCount !== 0 && dressSize.rowCount !== 0 && dressPrice.rowCount !== 0) {
                await pool.query(`UPDATE women_dresses_info SET women_dresses.price = women_dresses.price + women_dresses.price
                                WHERE women_dresses_info.price = $1`, [price]);
            }
        }
    }
const dressType = async (dress) => {
    let selectDress = await pool.query('SELECT dress_number FROM women_dresses_info WHERE dress_number = $1', [dress]);
    return selectDress;

}
    // adding cart
    async function customerProducts(customerName, product){
        if(customerName, product){
            await pool.query('INSERT INTO customer (customer_name, customer_product) VALUES (customerName, product)');
        }
    }
    // item above 300
    async function itemsAbove(){
        await pool.query('SELECT dress_number FROM women_dresses_info WHERE women_dresses.price ON women_dresses > 300');
    }
    // customer enquiry
    async function customerEnquiery(name, email, message){
        if(name, email, message){
            name = name.toUpperCase();
            
            // await pool.query('INSERT INTO customerEnq (customer_name, customer_email, customer_msg) VALUES (name, email, message)',[name,email,message]);

            return `Thank you. We have received your enquiry, we'll get back to you!`;
        }
    }

    return {
        buyDresses,
        itemsAbove,
        customerEnquiery,
        customerProducts
    }
}