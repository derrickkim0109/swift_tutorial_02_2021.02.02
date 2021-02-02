import Cocoa

let names = ["Anna","Alex","Brian", "Jack"]

for name in names {
    print("Hello, \(name)!")
}

for (index, text) in names.enumerated() {
    print("The name at the index \(index) is \(text)")
}

let numberOfLegs = ["spider":8, "ant":6, "cat":4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

let minutes = 60
let minuteInterval = 5

// 0부터 5개씩 60까지
// Java 처럼 switch문이 흘러가게 하기위해선
// switft 에서는 fallthrough를 쓰면 된다. break에 안걸림
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer"
}
print(description)

///-----\
var startIndex1 = 0
var endIndex1 = 100
var sum1 = 0

// break 와 continue에게 어디로 가라는 위치를 줄수가 있다.
// 가끔 필요할 때가 있다. 
gameLoop:while startIndex1 <= endIndex1 {
    startIndex1 += 1
    sum1 += startIndex1
    if sum1 >= 50 {
        break gameLoop
    }else{
        continue gameLoop
    }
}
print(sum1)




