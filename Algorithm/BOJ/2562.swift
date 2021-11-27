//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/27.
//

import Foundation

var numbers:[Int] = []

for _ in 0..<9{
    numbers.append(Int(readLine()!)!)
}

print(numbers.max()!)
print(numbers.firstIndex(of: numbers.max()!)!+1)
