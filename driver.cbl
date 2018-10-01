cbl pgmname(mixed)
Identification Division.
Program-Id. "driver".
Data division.
Working-storage section.
01 A pic 9(8) binary value 11111.
01 B pic 9(8) binary value 22222.
01 R pic 9(8) binary.
Procedure Division.
    Display "Hello World, from COBOL!"
    Call "sub" using by reference A B
      returning R
    Display R
    Stop Run.

    