let a = [1,2,3,4,5];
let b = a.map(x => x*2);

console.log(b);

let c = a.reduce((x,y) => x+y);
console.log("hasil : "+ c);