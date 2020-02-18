# Hash Tables

What is a hash table?
- A data structure that maps keys to values for highly efficient lookup.

How do you insert a key and value into a hash table?
- To insert a key and value:
  - first: compute the key's hash code, usually an `int` or a `long` type
    - two different keys can have the same hash code
  - second: map the hash code to an index in the array
    - Ex: `hash(key) % array_length`
    - two different hash codes can map to the same index
  - third: At the index, there's a linked list of keys and values
		- store the keys and value in this index
		- use a linked list to avoid collisions
			- you could have two different keys with the same hash code or two different hash
			codes that map to the same index.

How do you retrieve the value by its key?
	- You repeat this process:
		- compute the hash code from the key
		- compute the index from the hash code
		- search through the linked list for the value with this key

What is the run time of a hash table lookup?
	- If the number of collisions is very high then it's near O(n)
	- If the number of collisions is very low then it's closer to O(1)
