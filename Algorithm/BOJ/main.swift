//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/28.
//

import Foundation

var numbers = Set<Int>()

for _ in 0..<10{
    let input = Int(readLine()!)!

    
    numbers.insert(input%42)
}

print(numbers.count)
