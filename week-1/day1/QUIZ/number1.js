
function sum(n){
    let n1 = n/1000;
    let nRatusan= n%1000;
    let n2 = nRatusan/100;
    let nPuluhan = nRatusan%100;
    let n3 = nPuluhan/10;
    let nSatuan = nPuluhan%10;

    return Math.floor(n1)+Math.floor(n2)+Math.floor(n3)+nSatuan;
}

console.log(sum(3456));