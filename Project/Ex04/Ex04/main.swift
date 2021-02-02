//
//  main.swift
//  Ex04
//
//  Created by Derrick on 2021/02/02.
//

import Foundation

print("Entter an integer(0 ~ 9) : ",terminator : "")
var inpNum1 = Int(readLine()!)
// 확인용
var repNum1 = 0
if let _: Int = inpNum1{
    repNum1 = inpNum1!
    sumDigit()
}else{
    print("Input value is wrong!")
}


func sumDigit() {
    var result: Int = 0
    if inpNum1! > 10 {
      while (inpNum1! > 10) {
        result += inpNum1!%10
        inpNum1! = inpNum1!/10
    }
    print("Sum of digits = \(result)")

    }
    else{
        repNum1 = inpNum1!
        print("Sum of digits = \(repNum1)")
    }
}

