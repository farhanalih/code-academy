const data = "LG Monitor Asus Laptop 5432 Mix For Youtuber Bluetooth Adapter Solo Leveling Webtoon Panasoni Air Conditioner Karaoke Bazooka PowerBank 24 Hours Backpack of Holding Game Box 5 Universal Gadget Charger USB Squirming Tentacle USB Fishquarium Intel Processor 8 core Space Bar Keyboard Organizer & USB Hub Pop USB Pet Rock Powerstation 5 Dual Heated Travel Mug Crosley Collegiate Portable USB Turntable Hoodie AK-47";

const temp = data.split(" ");

const filterProduct = (prefix,emp) => emp.filter(emp => emp.startsWith(prefix));
console.log(filterProduct("A",temp));
console.log(filterProduct("S",temp));

