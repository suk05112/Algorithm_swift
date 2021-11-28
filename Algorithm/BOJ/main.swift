//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/29.
//

import Foundation

let numbers = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}
var ans:Int = 0

for number in numbers{
    ans += number*number
}

print(ans%10)
