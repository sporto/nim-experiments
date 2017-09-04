type
  MaybeEnum = enum
    Just, Nothing
  Maybe = object
    case kind: MaybeEnum
    of Just:
      value: string
    of Nothing:
      discard

let just = Maybe(kind: Just, value: "Hello")
let none = Maybe(kind: Nothing) 

proc print(maybe: Maybe) =
  case maybe.kind
  of Just:
    echo(maybe.value)
  of Nothing:
    echo("Nothing")

print(just)
print(none)
