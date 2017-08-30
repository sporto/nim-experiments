proc map(list: seq[int], fn: proc(n: int): int): seq[int] =
  var result: seq[int] = @[]

  for i in list:
    result.add(fn(i))

  result

proc double(x: int): int =
  x * 2

let res =
  @[1,2]
    .map(double)

echo res