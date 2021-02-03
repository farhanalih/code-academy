//spread operator
const x = [1,2,3];
const y = ["a","b","c"];
const z = [...x,...y,45,6,7];

console.log(z);

//rest parameter
const {a,...rest} = {a:1,b:2,c:3};// a = 1 ; ...rest = sisanya yang di dalam {}

//spread operator
const spread = {a:1,b:2,c:3};
const myspread = {a:1,...spread};
console.log(myspread);