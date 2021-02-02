//
//  main.swift
//  Ex05
//
//  Created by Derrick on 2021/02/02.
//

import Foundation


print("입력할 숫자의 갯수?(100개 미만) : ",terminator : "")
let inpNum1 = Int(readLine()!)
// 확인용
var repNum1 = 0
if let _: Int = inpNum1{
    repNum1 = inpNum1!
    numberGame()
}else{
    print("Input value is wrong!")
}
//

func numberGame(){
    //fields
    var num = [Int]()
    var currentMax = 0
    var count = 0
    
    print("\(repNum1)개의 숫자를 입력하세요!")
    

    for _ in 1...repNum1 {
        let inpNum2 = Int(readLine()!)
        num.append(inpNum2!)
    }
    for i in num.indices {
        if currentMax < num[i]{
           currentMax = num[i]
           count = i+1
        }
    }
    print("입력한 숫자중 최대값은 \(currentMax)이고 \(count)번째 값 입니다. ")
    }
    
    
    



