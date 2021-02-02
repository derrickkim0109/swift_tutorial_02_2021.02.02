import Cocoa

// 함수 : function

// Int 와 Int를 받아서 Int를 출력 한다.
func integerSum(a: Int, b: Int) -> Int{
    return a + b
}

print(integerSum(a: 4, b: 5))

func greet(person: String) -> String{
    return "Hello \(person)"
}

print(greet(person: "Anna")) // Hello Anna!
print(greet(person: "Derrick"))

// Parameter가 없는 함수 --> greet(person: X <- 매개변수)가 없는것
// 많이 쓸일은 없다.
func sayHelloWorld() -> String{
    return "Hello World"
}
sayHelloWorld()

// 복수의 Parameter를 사용하는 Function
func greeting(person : String, alreadyGreeted : Bool)
-> String{
    // true
    if alreadyGreeted {
        return("Hellow \(person), too.")
    // false
    }else{
        return("Hello \(person)")
    }
}

greeting(person: "Tim", alreadyGreeted: true)
greeting(person: "Tim", alreadyGreeted: false)

//1. 초기값과 변수명을 없애는 함수
// 1) _ name: String 많이씀.
// 2)zipCode postalCode 외부적 변수 내부적 변수를 틀리게 쓸수가 있다. - > 많이 안씀

// 3) String? = "USA" => 값이 안들어오면 그값은 USA다. - 많이 씀
// 4) nil 도 수용 하고 값들어오는 것도 수용하는 것.

func buildAddress(_ name: String, address : String,
                  city: String, zipCode postalCode : String,
                  country: String? = "USA") -> String{
    return """
        \(name)
        \(address)
        \(city)
        \(postalCode)
        \(country ?? "")
    """
} // (country ?? "") -> ?? "" 데이터 안들어오면 ""로 하겠다.
// 처음 변수에 매개변수 안적음
print(buildAddress("John Doe", address: "5 Covington Square",
             city:"Birmingham", zipCode: "01032"))

// 매개변수 추가한 부분
print(buildAddress("John Doe", address: "5 Covington Square",
             city:"Birmingham", zipCode: "01032", country:"Korea"))

// nil 타입은 아무것도 안보여 준다
print(buildAddress("John Doe", address: "5 Covington Square",
             city:"Birmingham", zipCode: "01032", country: nil))

//----

// 반환값이 없는 함수

//func printHello(name: String) -> Void{
//    print("\(name)님! 안녕하세요")
//}

// Void 는 Default 값이다 안쓰면 Void 란 소리다.!!!!
func printHello(name: String){
    print("\(name)님! 안녕하세요")
}
printHello(name: "유비")

func printAndCount(string : String) -> Int{
    print(string)
    return string.count
}

print(printAndCount(string: "Hello Derrick"))


//함수에서 함수 호출하는것
func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}

// printAndCount의 return -> Int 값을 받아야 하는데
// 쓸모 없으면 let _
printWithoutCounting(string: "I love you")


//---
// 가변 매개변수
// 변수 받는데 몇개를 받아야하는지 모르겠다??
func sayHelloFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

print(sayHelloFriends(me: "Derrick", friends: "Shon", "Kaity", "Brian"))
// 빈값으로 나옴
print(sayHelloFriends(me: "Moon President"))


//---
// 복수의 값을 return 하는 함수
// 자주 쓰임, 많이씀.
func getCountry() -> (dialCode: Int, isoCode: String, name: String){
    let country = (dialCode: 82, isoCode: "KR", name: "Korea" )
    return country
}

print(getCountry())



//---
// 배열중 최대값과 최소값을 return
// return을 두개 할거구나?
//     var currentMin = array[0], var currentMax = array[0]
func minMax(array: [Int]) -> (min : Int, max : Int ){
    //
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
