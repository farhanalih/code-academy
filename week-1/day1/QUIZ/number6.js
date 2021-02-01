let temp = "";
function deretRam(k){
    var ram = 0.5;
    for (let i=0 ; i <= k ; i++)
    {
        ram = ram * 2;
        temp = temp + ram + ",";
       
    }
    temp = temp.substring(0,temp.length-1);//remove last character 
    console.log(temp);
    return ram;
}
deretRam(15)