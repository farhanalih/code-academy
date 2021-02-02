function digitSum(digit){
    let temp = (""+digit).split("").map((x) => Number(x));
    let c = temp.reduce((x,y) => x+y);
    return c;
}
console.log(digitSum(4242));
console.log(digitSum(12345));