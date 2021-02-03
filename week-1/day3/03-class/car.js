export default class Car{
    static totalCar=0;
    constructor(merk,tahun){
        this.merk = merk;
        this.tahun = tahun;
        Car.totalCar++;
    }
}

class Taxi extends Car {
    constructor(merk,tahun,brand){
        super(merk,tahun);
        this.brand = brand;
    }

    totalRevenue(rate,km){
        return rate * km
    }

    info(){
        return console.log(this);
    }
}

class Angkot extends Car {
    constructor(merk,tahun,rute){
        super(merk,tahun);
        this.rute = rute;
    }

    seat(count){
        return count;
    }
}

export{Taxi,Angkot}