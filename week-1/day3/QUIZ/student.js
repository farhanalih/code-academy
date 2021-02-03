export default class Student{
    static totalStu=0;
    constructor(name,city,edc,grade,bootc,batch,year,skillp){
        this.name = name;
        this.city = city;
        this.edc = edc;
        this.grade = grade;
        this.bootc = bootc;
        this.batch = batch;
        this.year = year;
        this.skillp = skillp;
        Student.totalStu++
    }
}

class beasiswa extends Student {
    static totalB = 0;
    static totalI=0;
    constructor(name,city,edc,grade,type,bootc,batch,year,skillp,insentif){
        super(name,city,edc,grade,bootc,batch,year,skillp)
        this.type = 'Beasiswa';
        this.insentif = insentif; 
        beasiswa.totalB++;
        beasiswa.totalI += insentif     
    }

    totalInsentif(insentifP){
        
        return insentifP = insentifP + insentifP;
    }
}

class regular extends Student {
    static totalR = 0;
    static totalP = 0;
    constructor(name,city,edc,grade,type,bootc,batch,year,skillp,netprice){
        super(name,city,edc,grade,bootc,batch,year,skillp,netprice)
        this.type = 'Reguler';
        this.netprice = netprice;
        regular.totalR++;
        regular.totalP += netprice;
    }

}

export{beasiswa,regular};