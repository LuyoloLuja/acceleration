let express = require('express');
let app = express();
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const pg = require("pg");
const Pool = pg.Pool;

const connectionString = process.env.DATABASE_URL || 'postgresql://codex:codex123@localhost:5432/nandi';

const pool = new Pool({
  connectionString
});

const Nandis = require("./nandi");
const nandis = Nandis(pool);

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static('public'));

app.engine('handlebars', exphbs({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');

app.get('/', async function (req, res) {

  let table = await pool.query('select * from women_dresses_info join women_dresses on women_dresses_info.dress_type = women_dresses.id;');
  
  var dressOne = table.rows;
  for (const key in dressOne) {
    var element = dressOne[key];
    var price = element.price;
    var size = element.size;
    var dressType = element.dress_type;
  }

  res.render('home', {
    data: table.rows[0],
    size,
    price,
    dressType
  });
});

app.post('/', async function (req, res) {
  const {enq_name, email, message} = req.body;

  let feedback = await nandis.customerEnquiery(enq_name, email, message);
  res.render('home', {
    feedback
  });
})

app.get('/cart', function (req, res) {
  res.render('addToCart')
})

app.post('/addToCart', function (req, res) {
  res.render('addToCart')
})

app.get('/shop', function (req, res) {
  res.render('shop')
})

let PORT = process.env.PORT || 3030;

app.listen(PORT, function () {
  console.log('App starting on port', PORT);
});