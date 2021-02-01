
function searchWord(word, value) {
    for (let i = 0; i < word.length; i++) {
        if (word[i] == value){
            return true;
        }
    }
}
console.log(searchWord("aku suka javascript", "k"));