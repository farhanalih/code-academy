
function sumArray9(number,target){
    
   for (const i of number) {
       for (const j of number) {
           if (i+j === target) {
               return console.log(i,j);
           }
       }
       
   }
 
}
sumArray9([1,2,3,4,5],9)




