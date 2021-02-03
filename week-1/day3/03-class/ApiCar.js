export const listCar = (...list) =>{
    return list;
}

export const findCarbyMerk=(listCar,merk)=>{
    return listCar.filter(x=>x.merk=merk);
}