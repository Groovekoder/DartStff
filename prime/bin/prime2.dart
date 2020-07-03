//	AUTHOR:  Groove
//	DATE:	 July 03 2020
//	PURPOSE: Calculating Prime numbers
import "dart:io";
import "dart:convert";
var STRcount;
var count;
var STRfrom;
var from;
List<int> primes = new List<int>();
void main() {
	stdout.write("Calculate FROM >>");
	STRfrom = stdin.readLineSync();
	stdout.write("Calculate TO >> ");
	STRcount = stdin.readLineSync();
	from = int.parse(STRfrom);
	count = int.parse(STRcount);

	stdout.write("Calculating $STRcount Primes...");
	for(var i = from; i < count; i++){

		var bDiv = false;
		for(var y = 0; y < primes.length; y++){
			if(i % primes[y] == 0){
				bDiv = true;
				break;
			}			
		}
		if(bDiv == false){
			primes.add(i);
			print("Prime Found: $i");
		}
	}
}
