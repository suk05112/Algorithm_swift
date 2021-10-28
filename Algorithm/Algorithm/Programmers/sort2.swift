//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/10/27.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    
    var stringArray = numbers.map { String($0) }
    stringArray.sort{ $0+$1 > $1+$0 }
    let answer = stringArray.joined()
    
    if let int = Int(answer){
        return String(int)
    }

    return answer
}

//print(solution([6, 10, 2]))
//print(solution([3, 30, 34, 5, 9, 555, 50])) //"9534330"
