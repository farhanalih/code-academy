import { listCar } from './ApiCar.js';
import Car,{Taxi,Angkot} from './car.js'
function main(){
    const hrv = new Car("Honda",2015);
    console.log(hrv);

    const blueBird = new Taxi ("Toyota","2020","Blue Bird");
    console.log(blueBird);
    console.log(blueBird.totalRevenue(4000.00,2));

    const angkotA = new Angkot ("Carry","2010","Cikarang");
    console.log(angkotA);
    console.log(Car.totalCar);

    const cars = listCar(hrv,blueBird,angkotA);
    console.log(cars);
}

main()