
const express = require ('express');
const bodyParser = require('body-parser');
const cors = require('cors');

//create pool for pg database
const Pool = require('pg').Pool;
const { selectProvince, insertProvince, updateProvince, deleteProvince } = require('./province');
const { selectCity, insertCity, updateCity, deleteCity } = require('./city');
const { selectCategory, insertCategory, updateCategory,deleteCategory} = require('./category');
const { selectProduct, insertProduct, updateProduct,deleteProduct } = require('./product');
const { selectUsers, insertUsers, updateUsers, deleteUsers} = require('./user');
const { selectRoles, insertRoles, updateRoles, deleteRoles} = require('./role');
const { selectAddress, insertAddress, updateAddress, deleteAddress} = require('./address');
const { selectUser_roles } = require('./user_roles');
const { selectProduct_images, insertProduct_images, updateProduct_images, deleteProduct_images} = require('./product_images');

//config database
const pool = new Pool({
    user : "postgres",
    host : "localhost",
    database : "ecommerce",
    password : "root",
    port : 5432
});

const app = express();
app.use(cors());
app.use(express.urlencoded({extend : true}));
app.use(express.json());

const port = process.allowedNodeEnvironmentFlags.PORT || 1337;
app.listen(port, ()=> console.log(`Server listening on port ${port}`));

//table province
selectProvince(app,pool);
insertProvince(app,pool);
updateProvince(app,pool);
deleteProvince(app,pool);

//table city
selectCity(app,pool);
insertCity(app,pool);
updateCity(app,pool);
deleteCity(app,pool);

//table category
selectCategory(app,pool);
insertCategory(app,pool);
updateCategory(app,pool);
deleteCategory(app,pool);

//table product
selectProduct(app,pool);
insertProduct(app,pool);
updateProduct(app,pool);
deleteProduct(app,pool);

//table users
selectUsers(app,pool);
insertUsers(app,pool);
updateUsers(app,pool);
deleteUsers(app,pool);

//table roles
selectRoles(app,pool);
insertRoles(app,pool);
updateRoles(app,pool);
deleteRoles(app,pool);

//table address
selectAddress(app,pool);
insertAddress(app,pool);
updateAddress(app,pool);
deleteAddress(app,pool);

//table user roles
selectUser_roles(app,pool);

//table product_images
selectProduct_images(app,pool);
insertProduct_images(app,pool);
updateProduct_images(app,pool);
deleteProduct_images(app,pool);
