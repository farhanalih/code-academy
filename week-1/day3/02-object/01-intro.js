//initial object
const x ={}
const product = {
    id : 1,
    names : "Laptop Dell",
    price : 1500.00,
    variant : {
        type : "Games",
        core : "i7 Core"
    }
}
const infoProduct = info=>{
    return `info product :  ${info.names},${info.price}`
}
console.log(infoProduct(product));

//destructor object
const{id,...info}=product;
console.log(id);
console.log(info);

const{variant:{core}} = product;
console.log(core);