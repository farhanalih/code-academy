//return index from value
let arr = [1,2,3,4,5];
console.log(arr.indexOf(3));

//convert array into string
let str = ["java","js","python","golang"];
console.log(str.join(","));
console.log(typeof str);

//convert string to array
let com = "code.id";
console.log(com.split(""));

//arrow function ; kaskus kata code.id => di.edoc8
const passwordFor = value => value.split("").reverse("").join("")+value.length;
console.log(passwordFor("code.id"));

