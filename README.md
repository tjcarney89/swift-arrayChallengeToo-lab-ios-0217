# Array Challenge Deuce

![haveWhatSheshaving](http://i.imgur.com/anXw03E.png?1)

> [to waiter] I'll have what she's having. -[Estelle Reiner](https://en.wikipedia.org/wiki/Estelle_Reiner)

 
## Learning Objectives

- Write a method that takes in an array, performs some checks and returns a new array.
- Call on created method in viewDidLoad().
- Read and run unit tests to check your work.

## Instructions

Lets pretend for this lab that we own a deli.

Our deli is one of the busiest delis in New York City (therefore one of the busiest on Earth). Our job is to create a system that represents a line. Someone enters the store, they enter our line. Our server then needs to able to state "Now serving x!" x being the individuals name. There's one catch! If our customer is either Meg Ryan or Billy Crystal, they will jump to the front of the line.



* **1**. Implement this function - `addNameToDeliLine(_:)` 
	* It should take in a `String` as one of its arguments (labeled as name) and return a `String`. 
	* In its implementation, it should add the name passed into this function to the `deliLine` property on the `ViewController` with a few conditions:
		* If the persons name is Billy Crystal, they should be positioned at the front of the line.
		* If the persons name is Meg Ryan, they should be positioned at the front of the line.
		* Everyone else should be added to the back of the line and wait their turn.
	* The `String` this function should return is based on the following conditions (x represents the individuals name, y represents their position in line).
		* If the person is first in line: "Welcome x, you're first in line!"
		* If the persons name is Billy Crystal: "Welcome Billy! You can sit wherever you like."
		* If the persons name is Meg Ryan: "Welcome Meg! You can sit wherever you like."
		* Every other situation: "Welcome x, you're number y in line."
		

* **2**. Implement this function - `nowServing()`
	* It should take in no arguments but return back a `String`.
	* In its implementation the `String` that is returned is based on the following conditions (x represents the individuals name):
		* If the line is empty: "There is no one to be served."
		* If the line isn't empty: "Now serving x!"
	* This function should do one more thing. It should remove the individual from the deliLine that it's about to serve.
	

* **3**. Implement this function - `deliLineDescription()`
	* This function should take no arguments but return back a `String`.
	* The `String` to be returned back is based on the following conditions:
		* If the line is empty: "The line is currently empty."
		* Otherwise, return a `String` beginning with the "The line is:", and appending every customer in the line on a new line `\n` beginning with their number in the line. For example, if our line was represented as:
		
```swift
var line = ["Albert Einstein", "Cher", "Neil deGrasse Tyson", "Yoshi"]
```

The `String` to be returned should look like this:

"The line is:  
1. Albert Einstein  
2. Cher  
3. Neil deGrasse Tyson  
4. Yoshi"


![deli](http://i.imgur.com/4CElvfV.png?1)


<p class='util--hide'>View <a href='https://learn.co/lessons/swift-arrayChallengeToo-lab'>Array Challenge Deuce Lab</a> on Learn.co and start learning to code for free.</p>
