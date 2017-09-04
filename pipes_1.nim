# Pipe functions with partial application 
# Functions take different types

import "strutils"

proc add(a: int, b: int): int =
  a + b

proc concat(a: string, b: string): string =
   b & a

let res =
   1
    .add(5)
    .add(8)
    .intToStr
    .concat("Prefix")

echo res
