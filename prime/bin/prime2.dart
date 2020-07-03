//	AUTHOR:  Groove
//	DATE:	 July 03 2020
//	PURPOSE: Calculating Prime numbers

// Modules
import "dart:io";
import "dart:convert";

// Variables for FROM, TO and the PRIME LIST
var STRcount;
var count;
var STRfrom;
var from;
List<int> primes = new List<int>();

// Main
void main() {

	// User Input FROM
	stdout.write("Calculate FROM >>");
	STRfrom = stdin.readLineSync();

	// User Input TO
	stdout.write("Calculate TO >> ");
	STRcount = stdin.readLineSync();

	// Parse Input STR to INT
	from = int.parse(STRfrom);
	count = int.parse(STRcount);

	// Status Message for Calculating Session
	stdout.write("Calculating $STRcount Primes...");

	// Main Calculations
	for(var i = from; i < count; i++){

		// bool: Is it dividable?
		var bDiv = false;

		// More Calculations
		for(var y = 0; y < primes.length; y++){

			// If Modulo returns 0...
			if(i % primes[y] == 0){

				// It is dividable
				bDiv = true;

				// Gimme a break, yo
				break;
			}		

		}

		// If it is not dividable (by anything but itself and 1)...
		if(bDiv == false){

			// DADADADA DUDUUNNNNNN DUMDUMDUMDUMDUM BRRRRRRRRRRRR DUDUDUDUDUUUUUUUUUUUU DUD DUD DUDUUUUUUUUUUUUUUUUUU!
			// Found a prime! :)
			primes.add(i);
			print("Prime Found: $i");

		}

	}
	
}
