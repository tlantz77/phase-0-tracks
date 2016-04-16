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
	console.log(longest);
}			       

var array = ["long phrase", "phrase", "longest phrase", "super-duper extra-long phrase", "longer phrase"];

longestStr(array);

var bugs = ["ant", "beetle", "tarantulas", "bee", "wasp", "bumblebee"];

longestStr(bugs);

/*Release 1 Pseudocode
- Declare a boolean variable to check if a match is found and set it to false.
- Iterate one-by-one through the keys of the first object
	- For each key in that object, iterate through the keys of the second object.
		- if a key match is found, check the values of both keys.
			- if the values are equal, set boolean variable to true.
		- otherwise do nothing.	
- Return value of the boolean.*/

var thingA = {color: "blue", num: 3, isCool: false};
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

