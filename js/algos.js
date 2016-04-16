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