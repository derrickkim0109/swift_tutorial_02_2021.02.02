//
//  main.swift
//  Ex02
//
//  Created by Derrick on 2021/02/02.
//

import Foundation

var repNum = 0


print("Input your decimal no!",terminator : "")
let inpNum1 = Int(readLine()!)

if let _: Int = inpNum1{  // 쓸일이 없으면 _
    repNum = inpNum1! // Optional
    print(factorial(inpNum1!))
}else{
    print("Input value is wrong!")
}


func factorial(_ inpNum1: Int) -> Int{
    if inpNum1 == 0 {
         return 1
     }
     var a: Int = 1
     for i in 1...inpNum1 {
         a *= i
     }
     return a
}


