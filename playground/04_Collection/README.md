# Collection_21.02.02

- Collection : 여러 값들을 묶어서 하나의 변수로 사용

- Array :  순서가 있는 리스트 컬렉션
- Dictionary : Key와 Value의 쌍으로 이루어진 Collection
- Set : 순서가 없고, 멤버는 유일한 값으로 구성

        // Array

#### Empty Int Array 생성
        var intVariable : Array<Int> = Array<Int>()
---
#### Data 추가
        Array는 순서가 있다.
        값이 뭐가 있니? Variable.contains(X)
---
#### 삭제 하기
        intVariable.remove(at: 0)
---
#### 여러가지 Array 선언 
1. var doubleVariable : Array<Double> = Array<Double>() 
        
2. var doubleVariable : Array<Double> = [Double]() 
        
3. var doubleVariable : [Double] = [Double]() 

4. Array 선언하는법 가장 간단한 방식 
        var doubleVariable : [Double] = []
5. var intVariable3 = [Int]() 

---
#### 배열에 초기값을 넣어서 생성 하기
1.let intVariable4 : [Int] = [1,2,3]
2.let intVariable5 = [1,2,3]

---
####  빈 배열을 생성
var someInts: [Int] = []

---
#### 배열을 지우자
someInts = []

----
#### 기본값으로 설정된 배열 생성하기
var threeDoubles = Array(repeating: 0.0, count: 3)
---
#### 배열 합치기
var sixDoubles = threeDoubles + anotherThreeDoubles 
// for문에서 Addition은 threeDoubles[0]+anotherThreeDoubles[0] 식으로

----
#### 문자를 이용한 배열의 생성
- var shoppingList: [String] = ["Eggs", "Milk"]

---
#### 문자열 배열의 출력
- for i in 0..<shoppingList.count{
print(shoppingList[i])
}

---- 
#### List 비어 있냐??
if shoppingList.isEmpty {
    print("The shopping list is empty")
}else{
    print("The shopping list is not empty")
}

----
#### 배열에 데이터 추가
shoppingList.append("Four")
print(shoppingList.count,shoppingList)

----

#### 배열의 특정 위치 데이터 변경 및 삭제
shoppingList[4...6] = ["Banana", "Apples"]
// 범위는 3개까지 해두고 2 개만 넣어서 한개 지워짐.

----
### 배열의 특정 위치 데이터 추가, 삭제, 변경
-  at: 번지수 <- 어디에 넣을 거냐?
shoppingList.insert("Maple Syrup", at: 0)
---
##### 삭제한 부분도 가지고 온다 (위와 연관성 있다. )
let mapleSyrup = shoppingList.remove(at: 0)
print(mapleSyrup, shoppingList.count,shoppingList)
