let express = require('express');
let app = express();
const exphbs  = require('express-handlebars');
const bodyParser = require('body-parser');
const pg = require("pg");
const Pool = pg.Pool;

const connectionString = process.env.DATABASE_URL || 'postgresql://coder:luyolo@localhost:5432/nandi';

const pool = new Pool({
  connectionString
});

const Nandis = require("./nandi");
const nandis = Nandis(pool);

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static('public'));

app.engine('handlebars', exphbs({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');

app.get('/', function (req, res) {
  res.render('home');
});

app.post('/', function (req, res){
  const {name, email, message} = req.body;

  let feedback = nandis.customerEnquiery(name, email, message);
  res.render('home', {
    feedback
});
})
app.get('/cart', function(req, res){
  let price = women_dresses.price;


  res.render('addToCart', {
    price
  })
})

// app.post('/cart', async function(req, res){
//   const {dress, size, quantity} = req.body;
//   let productChosen = await nandis.buyDresses(size, quantity, dress);
//   console.log(size, quantity, dress);

//   res.render('addToCart', {
//     productChosen
//   })
// })

// app.post('/', async function(req, res){
//   const {dress, size, quantity} = req.body;
//   let productChosen = await nandis.buyDresses(size, quantity, dress);

//   res.render('addToCart', {
//     productChosen
//   })
// })

app.get('/shop', function(req, res){
  res.render('shop')
})

app.get('/form', function(req, res){
  res.render('form')
})

let PORT = process.env.PORT || 3030;

app.listen(PORT, function(){
  console.log('App starting on port', PORT);
});