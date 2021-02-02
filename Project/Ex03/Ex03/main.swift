//
//  main.swift
//  Ex03
//
//  Created by Derrick on 2021/02/02.
//

import Foundation

print("Input your number : ",terminator : "")
let inpNum = Int(readLine()!)
// 확인용
var repNum = 0

if let _: Int = inpNum{  // 쓸일이 없으면 _
    repNum = inpNum! // Optional
    gugudan()
}else{
    print("Input value is wrong!")
}


func gugudan() {
        for num in 1...9 {
            for dan in repNum..<repNum+4{
                print("\(dan) X \(num) = \(String(format:"%2d",dan*num))", terminator:"\t\t")
        }
        print("")
    }
}

//---------------
// 선생님이 하신 부분.
//---------------

print("Input your number : ",terminator : "")
let inpNum1 = Int(readLine()!)
// 확인용
var repNum1 = 0
if let _: Int = inpNum1{
    repNum1 = inpNum1!
}else{
    print("Input value is wrong!")
}

for i in 1...9{
    print(String(format: "%2d",repNum1),"X",String(format: "%d",i),"=",String(format: "%2d",repNum1 * i), terminator : "\t\t")
    print(String(format: "%2d",repNum1+1),"X",String(format: "%d",i),"=",String(format: "%2d",repNum1 * i), terminator : "\t\t")
    print(String(format: "%2d",repNum1+2),"X",String(format: "%d",i),"=",String(format: "%2d",repNum1 * i), terminator : "\t\t")
    print(String(format: "%2d",repNum1+3),"X",String(format: "%d",i),"=",String(format: "%2d",repNum1 * i), terminator : "\n")

}
