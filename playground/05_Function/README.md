# Function_21.02.02_05
## 어떻게 할지 먼저 써보고 만들어 보자 


-  함수 : function
-  Int 와 Int를 받아서 Int를 출력 한다.
    func integerSum(a: Int, b: Int) -> Int{
        return a + b
    }

    print(integerSum(a: 4, b: 5))

- func greet(person: String) -> String{
  return "Hello \(person)"
  }

  print(greet(person: "Anna")) // Hello Anna! 

---  
#### Parameter가 없는 함수 --> greet(person: X <- 매개변수)가 없는것
- 많이 쓸일은 없다.
func sayHelloWorld() -> String{
    return "Hello World"
}
----
#### 복수의 Parameter를 사용하는 Function

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

----

### 초기값과 변수명을 없애는 함수
1) _ name: String 많이씀.

2) zipCode postalCode 외부적 변수 내부적 변수를 틀리게 쓸수가 있다. - > 많이 안씀

3) String? = "USA" => 값이 안들어오면 그값은 USA다. - 많이 씀

4) nil 도 수용 하고 값들어오는 것도 수용하는 것.

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

---
#### 반환값이 없는 함수
