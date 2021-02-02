let employees = ["raiz","alif","fahmi","ahmad","dafa","ale","amar","andi","rizki"];

//arrow function filter
const filterEmpl = (prefix,emp) => emp.filter(emp => emp.startsWith(prefix));
console.log(filterEmpl("f",employees));

//old ways
// function filterEmp (emps,prefix){
//     let result = []
//     for (let i = 0; i < emps.length; i++) {
//         if (emps[i].startsWith(prefix)) {
//             result.push(emps[i]);
//         }
//     }
//     return result;
// }
// console.log(filterEmp(employees,"a"));