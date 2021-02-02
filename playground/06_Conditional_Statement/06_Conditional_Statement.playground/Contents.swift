import Cocoa

var isCar = true
var isNew = true

// Tuple이라서 가능 하다
if isCar, isNew{
    print("New Car~")
}

isNew = false
if isCar,isNew{
    print("New Car")
}else{
    print("Old Car")
}
//-----

// Unwarpping if Statement
// 이 Double은 ? 가 들어가 있어서 nil 값을 수용한다.
let price: Double? = 5.99

// '!'를 써야 내용을 쓸수 있다.
// -> 강제적 Unwrapping
if price! > 5.0 {
    print(price!)
}
// 위의 값 처럼 처리 하면 Error 걸림\

// 조건형 Unwrapping
// -> 강제적으로 Upwrapping 할 필요 없다.
if let p = price, p > 5.0 {
    print(p)
}

//--
// Switch 조건문

let personAge = 14

if personAge < 1 {
    print("baby")
}else if personAge < 3{
    print("toddler")
}else if personAge < 13{
    print("gradeschooler")
}else if personAge < 18 {
    print("teen")
}else{
    print("adult")
}

//----
// 자바는 흘러가서 break있지만. swift는 default로 break됨
// swift를 흘러가게 하고 싶으면 따로 처리 해주어야 한다.
switch personAge {
case 0..<1:
    print("baby")
case 1..<3:
    print("toddler")
case 3..<5:
    print("preschooler")
case 5..<13:
    print("gradeschooler")
case 13..<18:
    print("teen")
default:
    print("adult")
}

//--
let someInteger = 35
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
    
// OX가 알고 있는 최고 Int값 Int.max
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

let character: Character = "a"
switch character {
case "a","A":
    print("The letter is A")
default:
    print("The letter is not A")
}

///-------
/// Tuple로 사용하는 switch
// (_,0): X 값 무슨값이든지 Y = 0 이면 ~~뭐 그런식으로 쓴다

let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("\(somePoint) is at the origin.")
case (_,0):
    print("\(somePoint) is on the x-axis")
case (0,_):
    print("\(somePoint) is on the y-axis")
case(-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside the box")
}

// case에 where조건 사용하기
// 크기 같은것을 비교하려고 하면 이런 조건문 쓰면 좋다.
let anotherPoint = (1, -1)
switch anotherPoint {
case let(x,y) where x == y:
    print("\(x), \(y) is on the line x == y ")
case let(x,y) where x == -y:
    print("\(x), \(y) is on the line x == -y ")
default:
    <#code#>
}

let countryName = "United States"
var countryCode = ""

if countryName == "United Kingdom"{
    countryCode = "GB"
}else if countryName == "Mexico"{
    countryCode = "MX"
}else if countryName == "Canada"{
    countryCode = "CA"
}else if countryName == "Spain"{
    countryCode = "ES"
}else if countryName == "United States"{
    countryCode = "US"
}else{
    countryCode = "??"
}

print("Country named '\(countryName)' has code \(countryCode)")


// ---
// 위의 소스를 enum(enumerate)과 switch로 사용

enum Countries : String{
    case uk = "United Kingdom"
    case mk = "Mexico"
    case ca = "Canada"
    case es = "Spain"
    case us = "United States"
    case unknown = ""
    
}

// A  ? true : False
// ?? 위에것 + nil :  물음표 두개 일때 
switch Countries(rawValue: countryName) ?? .unknown {
case .uk:
    countryCode = "CB"
case .mk:
    countryCode = "MX"
case .ca:
    countryCode = "CA"
case .es:
    countryCode = "ES"
case .us:
    countryCode = "US"
case .unknown:
    countryCode = "??"
    countryCode = "CB"
}
print("Country named '\(countryName)' has code \(countryCode)")



