//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/29.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}
let x = input[0]
let y = input[1]

let w = input[2]
let h = input[3]

var distance:[Int] = []

distance.append(x)
distance.append(y)
distance.append(w-x)
distance.append(h-y)

print(distance.min()!)
