//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/28.
//

import Foundation

let first_input = readLine()!.components(separatedBy: " ").map{Int($0)!}
let numbers = readLine()!.components(separatedBy: " ").map{Int($0)!}

let N = first_input[0]
let X = first_input[1]

var result:String = ""

for number in numbers {
    if(number<X){
        result += String(number) + " "
    }
}
result.removeLast(1)
print(result)


