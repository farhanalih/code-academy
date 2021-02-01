function isPalindrome(s){
    
    return s.toLowerCase() == s.toLowerCase().split ("").reverse().join("");
}

console.log(isPalindrome("Level"));