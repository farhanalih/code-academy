let data = "LG Monitor Asus Laptop 5432 Mix For Youtuber Bluetooth Adapter Solo Leveling Webtoon Panasoni Air Conditioner Karaoke Bazooka PowerBank 24 Hours Backpack of Holding Game Box 5 Universal Gadget Charger USB Squirming Tentacle USB Fishquarium Intel Processor 8 core Space Bar Keyboard Organizer & USB Hub Pop USB Pet Rock Powerstation 5 Dual Heated Travel Mug Crosley Collegiate Portable USB Turntable Hoodie AK-47";
let abjad = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

abjad = abjad.split("");
let product = data.split(" ");

for (let i = 0; i < abjad.length; i++) {
    const list = product.filter(product => product.startsWith(abjad[i]));
    console.log("===== "+abjad[i]+" =====");
    list.map(x=>console.log(x));
    console.log("\n");
    
}