identification division.
program-id. hello.
environment division.
data division.
working-storage section.
01 hello pic x(6) value "hello ".
01 world pic x(6) value "world!".
01 R pic 9(8) binary.
procedure division.
  call "say" using hello world returning R.
  display R.
  stop run.