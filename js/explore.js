/*Pseudocode - reverse letters
- Define a variable as an empty string to house our reversed word.
- Loop through the string
	- Take the last letter first, add it to the empty string.
	- Proceed to each previous letter in the string, adding it to the new string, until there are no letters left.
	- Return and Print the new string. 
*/

function reverse(str) {
	var ReverseStr = "";
	for (var i = (str.length-1); i >= 0; i--) {
		ReverseStr = ReverseStr + str[i];
	}
	console.log(ReverseStr);
}

reverse("Hello World!");

var bear = "Winnie the Pooh";

console.log(bear);
reverse(bear);