# ArrayList and Resizable Arrays

Arrays are not always variable in length, depending on the language.

Java, for instance, uses fixed length arrays.

Arrays are usually doubled if they need to be resized.

This usually takes O(n). This happens so rarely that the amortized insertion time is still O(1).
	(amortized: gradually write off initial cost)

Steps to resize using a `merge` function:
- Create a new array of size `original_array`
- Pass the new array and old array to the merge function.
- `merge` function:
	- create a new array
	- loop through the first array, adding elements to the new array created in the merge function
	- loop through the new array, created outside the merge function, and add elements to the new array created in the merge function
	- return the newly created array
