let employees = ["raiz","alif","fahmi","ahmad","dafa","ale","amar","andi","rizki"];

const passwordFor = value => value.split("").reverse("").join("")+value.length;

//metode push manual, bisa gunakan loop untuk isi passwordList
let passwordList = [];
passwordList.push(passwordFor(employees[0]));
console.log(passwordList);

//functional method 
const passwordEmps = employees.map(x => passwordFor(x));
console.log(passwordEmps);


