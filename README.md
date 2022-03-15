# Byte_Shuffler
This repository contains a bash script, that can change a specific set of bytes with random bytes to change binary signature every time it is executed.
The need of this script arise when i was working on a BAS project. The exploit that are tested against security controls must have different signatures every time it is created.
But to do that we have to set up whole development and compilation environment of every language in the server side, that changes some code every time it is compiled.
To avoid this heavy computation. I simple added a signature text or bytes in every binary and then this script would change those bytes or shuffle those bytes with random printable ascii characters. <br />

**PRE-REQ:** <br />
To use this script, you must have signature bytes added in the binary: signature text bytes are "abcdefghijklmnopqrstuvwxyz"
Just initiliaze a string or char array anywehere in your code and compile the binary just once. After that this script will change bytes everytime and creates a different signature.<br />

The biggest advantage of using this script is that its very fast and language independent. It'll change signature of a binary even if its compiled in different languages like c++, c# or python. Some of the test cases are provided.<br />

**Command**:<br />
*bash shuffler.sh input_binary.exe output_binary.exe*<br />


https://user-images.githubusercontent.com/34940939/158320113-af229e0b-e715-4b7f-b046-f6fa9e915a1e.mp4

