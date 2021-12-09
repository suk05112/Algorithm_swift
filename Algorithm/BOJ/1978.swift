//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/09.
//

import Foundation

let N = Int(readLine()!)!
var numbers = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}
numbers.removeAll(where: {$0 == 1})

var max = Int(sqrt(Double(numbers.max()!))+1)

for i in 2...max{
    for number in numbers {
        if(number != i && number%i == 0){
            numbers.removeAll(where: {$0 == number})
        }
    }
}

print(numbers)
print(numbers.count)
