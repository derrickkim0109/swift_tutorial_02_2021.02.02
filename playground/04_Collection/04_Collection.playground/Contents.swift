import Cocoa

/*
 Collection : 여러 값들을 묶어서 하나의 변수로 사용
 
 Array :  순서가 있는 리스트 컬렉션
 Dictionary : Key와 Value의 쌍으로 이루어진 Collection
 Set : 순서가 없고, 멤버는 유일한 값으로 구성
 
 */

// Array

// Empty Int Array 생성
var intVariable : Array<Int> = Array<Int>()

// Data 추가
// Array는 순서가 있다.
intVariable.append(1)
intVariable.append(10)
intVariable.append(100)
intVariable.append(Int(100.1)) // Int만 되서
print(intVariable)

// Class or Stucture 로 할거니?

// 값이 뭐가 있니? Variable.contains(X)
intVariable.contains(100)
intVariable.contains(99)
intVariable[0]
intVariable[0...1]

//삭제 하기
intVariable.remove(at: 0)
intVariable.count

// 맨 뒤의 것 지우기
intVariable.removeLast()
intVariable

intVariable.removeAll()
intVariable
// 하나도 없는 상태에서 count 찍으면 0 아무것도 없다는 뜻
intVariable.count
// intVariable[0]

/*
 여러가지 Array 선언
 */
// Empty Double Array 생성
// var doubleVariable : Array<Double> = Array<Double>() - 1
// 똑같은 것이다 ==
// var doubleVariable : Array<Double> = [Double]() - 2
// ==
// var doubleVariable : [Double] = [Double]() - 3
// Array 선언하는법 가장 간단한 방식 - 4
// famous rule for making array
var doubleVariable : [Double] = []
var intVariable2 : [Int] = []
var intVariable3 = [Int]() //  -5

// 배열에 초기값을 넣어서 생성 하기
// 초기값 이 1,2,3 설정
let intVariable4 : [Int] = [1,2,3]
let intVariable5 = [1,2,3]
// let intVariable6 = [] <- 그냥 값이 없으면 뭔지 몰라!

// 빈 배열을 생성
var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items")
// 배열에 3을 추가
someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items")
// 배열을 지우자
someInts = []
print("someInts is of type [Int] with \(someInts.count) items")

// 기본값으로 설정된 배열 생성하기
var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

// 배열 합치기
var sixDoubles = threeDoubles + anotherThreeDoubles
// +는 합쳐지는 것 ->
// for문에서 Addition은 threeDoubles[0]+anotherThreeDoubles[0] 식으로
print(sixDoubles)

//문자를 이용한 배열의 생성
var shoppingList: [String] = ["Eggs", "Milk"]
shoppingList

// 문자열 배열의 출력
for i in 0..<shoppingList.count{
    print(shoppingList[i])
}
// List 비어 있냐??
if shoppingList.isEmpty {
    print("The shopping list is empty")
}else{
    print("The shopping list is not empty")
}

// 배열에 데이터 추가
shoppingList.append("Four")
print(shoppingList.count,shoppingList)

shoppingList += ["Banking","Powder"]
print(shoppingList.count,shoppingList)

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList.count,shoppingList)

// 배열의 특정 위치 데이터 변경 및 삭제
shoppingList[4...6] = ["Banana", "Apples"]
// 범위는 3개까지 해두고 2 개만 넣어서 한개 지워짐.
print(shoppingList.count,shoppingList)

//------
// 배열의 특정 위치 데이터 추가, 삭제, 변경
// at: 번지수 <- 어디에 넣을 거냐?
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList.count,shoppingList)

// 삭제한 부분도 가지고 온다
let mapleSyrup = shoppingList.remove(at: 0)
print(mapleSyrup, shoppingList.count,shoppingList)

shoppingList
// 배열의 값과 인덱스가 필요하나 경우
for (index, value) in shoppingList.enumerated(){
    print("Item \(index + 1) : \(value)")
}

// Dictionary
// var stringDictionary: Dictionary<String,String> = [String:String]()
var stringDictionary : [String : String] = [:]

stringDictionary["name"] = "유비"
// 동일한 key값 일 경우 ->유비는 사라지고 관우만 남음
// -> key 값을 잘 정해서 해야한다.
// 순서에 상관없이 내가 key값을 가져올려면 Dictionary를 쓴다.
stringDictionary["name1"] = "관우"
stringDictionary["name2"] = "장비"
stringDictionary["a"] = "초선"

print(stringDictionary)

// value 값에 따라 순서대로 되네
var scoreDictionary:[String:Int] = [:]
scoreDictionary["유비"] = 100
scoreDictionary["관우"] = 80
scoreDictionary["장비"] = 90

print(scoreDictionary)


// 문자열이 먼저 나온다 Any
var anyDictionary: [String:Any] = [:]
anyDictionary["anotherKey"] = "100"
anyDictionary["someKey"] = "value"

print(anyDictionary)


// key에 해당하는 값 변경
anyDictionary["someKey"] = "dictionary"
print(anyDictionary)

// key에 해당하는 값 제거
anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary
// key 값을 nil값으로 넣을 수도 있다.
anyDictionary["someKey"] = nil
print(anyDictionary)

///-----  Set
// set {} 중괄호로 사용 됨
// set은 동일한 값 넣어도 한개만 들어가고
// 순서는 마음대로 들어간다. <<
var integerSet :Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
print(integerSet)

integerSet.contains(1)
integerSet.contains(10)

// Set은 integerSet.remove(at: ) 번지수로 안지운다
// remove(member값)으로 지운다.
integerSet.remove(100)
print(integerSet)


// 배열 문자를 이용한 Set 생성
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres.count, favoriteGenres)

// 굳이 <String> 안붙여줘도 된다. -> 이타입 제일 많이 쓴다.
var favoriteGenres1: Set = ["Rock", "Classical", "Hip hop"]
print(favoriteGenres1.count, favoriteGenres1)

favoriteGenres.isEmpty


// 추가
favoriteGenres.insert("Jazz")
print(favoriteGenres)

// 삭제
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre) I'm done it ")
}else{
    print("I never much cared for that")
}


// 숫자와 집합 계산할때 유용하게 사용하는 Set

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let singleDigits:Set = [2,3,7,8]

// 합집합 // .sorted() 정렬
print(oddDigits.union(evenDigits).sorted())

// 교집합
oddDigits.intersection(evenDigits)
oddDigits.intersection(singleDigits).sorted

// 차집합
oddDigits.subtracting(singleDigits)

// 여집합
oddDigits.symmetricDifference(singleDigits).sorted()

// Set의 membership과 동등 비교
let houseAnimal: Set = ["dog", "cat"]
let farmAnimal : Set = ["cow","chicken","sheep","dog","cat"]
let cityAnimal: Set = ["duck", "rabbit"]

// Subset 부분 집합이다.
// A.isSubset(of: B) => True == A는 B의 부분 집합이다.
houseAnimal.isSubset(of: farmAnimal)
// 모집단
farmAnimal.isSuperset(of: houseAnimal)
// 완전 틀린 집단이냐?
farmAnimal.isDisjoint(with: cityAnimal)
farmAnimal.isDisjoint(with: houseAnimal)

