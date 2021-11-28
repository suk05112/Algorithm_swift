//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/28.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{Int($0)!}

let A = input[0]
let B = input[1]

print(A+B)
print(A-B)
print(A*B)
print(A/B)
print(A%B)
