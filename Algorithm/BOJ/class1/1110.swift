//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/27.
//

import Foundation

let N = Int(readLine()!)!

var new_number = N
var cycle:Int = 0

repeat{
    let back = new_number/10 + new_number%10
    new_number = Int(String(new_number%10) + String(back%10))!
    cycle += 1
}while(N != new_number)

print(cycle)
