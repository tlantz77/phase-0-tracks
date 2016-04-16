/*Release 0 Pseudocode
- Declare an integer variable to store the longest string length and set it to 0.
- Declare an empty string variable to store the longest string in the array.
	- Lopp through the array.
		- For each item in the array, check to see if it's length is greater than currently stored value.
			- If it is:
				A: Store the new length as the longest length.
				B: Store that array item as the new longest item.
			- Otherwise do nothing.
- Return the longest array item.*/

function longestStr(ary) {
	var mostlength = 0;
	var longest = "";
	for (var i = 0; i < ary.length; i++){
		if (ary[i].length > mostlength) {
			mostlength = ary[i].length;
			longest = ary[i];
		}
	}
	return longest;
}			       

var array = ["long phrase", "phrase", "longest phrase", "super-duper extra-long phrase", "longer phrase"];

console.log(longestStr(array));

var bugs = ["ant", "beetle", "tarantulas", "bee", "wasp", "bumblebee"];

console.log(longestStr(bugs));

/*Release 1 Pseudocode
- Declare a boolean variable to check if a match is found and set it to false.
- Iterate one-by-one through the keys of the first object
	- For each key in that object, iterate through the keys of the second object.
		- if a key match is found, check the values of both keys.
			- if the values are equal, set boolean variable to true.
		- otherwise do nothing.	
- Return value of the boolean.*/

var thingA = {color: "blue", num: 3, isCool: true};
var thingB = {color: "red", num: 4, isNeat: false};
var thingC = {color: "yellow", num: 3, isAwesome: true};

function compareObj(obj1, obj2) {
	var match = false;
	for (var key1 in obj1) {
		for (var key2 in obj2) {
			if (key1 == key2) {
				if (obj1[key1] == obj2[key2]) {
					match = true;
				}
			}
		}
	}
	return match;
}

console.log(compareObj(thingA, thingB));

//"num: 3" is the only matching key-value pair so this is the only that should return true.
console.log(compareObj(thingA, thingC));

console.log(compareObj(thingB, thingC));

/*Release 2 Pseudocode
- Declare empty word array.
- Loop a number of times equal to value passed to function, and each time:
	- Declare a length variable equal to a random # between 1 and 10.
		- Create a word by looping a number of times equal to the random length, each time:
			- Generate a random letter from a string of the alphabet.
			- Add that letter to the word.
	- Append that word to the array.
*/

function RandomWords(x) {
	var word_array = [];
	
	//function to generate random alphabet letter.
	function getletter() {
		letter = "abcdefghijklmnopqrstuvwxyz".charAt(Math.floor(Math.random() * 26));
		return letter;
	}
	
	//loop to generate words and add to the array
	for (var w = 0; w < x; w++) {
		var word = "";
		var length = Math.floor((Math.random() * 10) + 1);
		for (var i = 0; i < length; i++) {
			word = word + getletter();
		}
		word_array.push(word);
	}
	
	return word_array;
}

RandomWords(4);

//Driver Code

//loop 10 times, generating array of random length between 1 and 10.
for (var i = 0; i < 10; i++) {
	newArray = RandomWords(Math.floor((Math.random() * 10) + 1));
	
	//print results to console
	console.log("Array #" + (i+1) + ": " + newArray);
	console.log("Longest word: " + longestStr(newArray));
	console.log();
}