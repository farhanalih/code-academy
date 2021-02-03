//kasus sum
const sum = (a,b) => {
    return a+b
}

console.log(sum(1,2));


const sumRest=(...values)=>{
    let sum = 0;
    values.forEach(element => {
        sum += element; //sum = sum + element
    });
    return sum;
}
console.log(sumRest(1,2,3,4,5,5));

const firstName = "code";
const lastName = "id";
const gelar = "Sarjana";

const greet = (...names)=>{ //rest parameter digunakan untuk paramater > 3 
    return names.join(" ");
}

console.log(greet(firstName,lastName,gelar));
