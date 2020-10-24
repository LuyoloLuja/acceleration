let express = require('express');
let app = express();
const exphbs  = require('express-handlebars');
const bodyParser = require('body-parser');
const pg = require("pg");
const Pool = pg.Pool;

const Nandis = require("./nandi");
const nandis = Nandis();

const connectionString = process.env.DATABASE_URL || 'postgresql://coder:luyolo@localhost:5432/nandi';

const pool = new Pool({
  connectionString
});
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

  let feedback = nandis.customer(name, email, message);
  res.render('home', {
    feedback
});
})

app.get('/shop', function(req, res){
  res.render('shop')
})
app.post('')

app.get('/form', function(req, res){
  res.render('form')
})
app.get('/cart', function(req, res){
  res.render('addToCart')
})

let PORT = process.env.PORT || 3030;

app.listen(PORT, function(){
  console.log('App starting on port', PORT);
});