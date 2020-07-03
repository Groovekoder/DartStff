//	AUTHOR:  Groove
//	DATE:	 July 03 2020
//	PURPOSE: Calculating Prime numbers
import "dart:io";
import "dart:convert";
var STRcount;
var count;
List<int> primes = new List<int>();
void main() {
	stdout.write("Enter count of Primes >> ");
	STRcount = stdin.readLineSync();
	count = int.parse(STRcount);
	stdout.write("Calculating $STRcount Primes...");
	for(var i = 2; primes.length < count; i++){
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
