//initial map
let ceo = new Map();
ceo.set("facebook","Mark");
ceo.set("google","Larry");


console.log(ceo.size);
console.log(ceo.get("google"));

for (const [key,value] of ceo) {
    console.log(key+" founded by "+value);  
}

ceo.forEach((value,key) => {
    console.log(key + " founded by " + value);
    
});