//
//  main.swift
//  Ex01
//
//  Created by Derrick on 2021/02/02.
//

import Foundation

// '!'를 넣어 주어야 Int 가 먹힘




while(true){
    print("Input your decimal no!",terminator : "")
    let inpNum = Int(readLine()!)


    if inpNum != nil{
        for index in 1...inpNum!{
            var result = ""
            for _ in inpNum!-index+1...inpNum!{
                result += "*"
            }
            print(result)
        }
        for index in 2...inpNum!{
            var result = ""
            for _ in 1...inpNum!-index + 1{
                result += "*"
                
            }
            print(result)
        }
        break
    }
}


//------------
// 선생님 Version
//------------
var repNum = 0
let inpNum1 = Int(readLine()!)

if let _: Int = inpNum1{  // 쓸일이 없으면 _
    repNum = inpNum1! // Optional
    makeStar()
}else{
    print("Input value is wrong!")
}

func makeStar() {
    // 별표를 증가하면서 출력하기
    for lineNo in 1...repNum {
        for _ in 1...lineNo {  // 쓸일 없으면 _
            print("*", terminator: "")
        }
        print("")
    }
    
    // 별표를 감소하면서 출력하기
    /// 역순으로 띄우기. (0..<repNum - 1).reversed()
    
    for lineNo in (0..<repNum - 1).reversed() {
        for _ in 0...lineNo {  // 쓸일 없으면 _
            print("*", terminator: "")
        }
        print("")
    }
}




