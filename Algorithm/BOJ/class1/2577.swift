//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/29.
//

import Foundation

let A = Int(readLine()!)!
let B = Int(readLine()!)!
let C = Int(readLine()!)!

var count:[Int] = Array(repeating: 0, count: 10)
let numbers = String(A*B*C).map{ Int(String($0))!}

for number in numbers{
    count[number] += 1
}
for c in count{
    print(c)
}


