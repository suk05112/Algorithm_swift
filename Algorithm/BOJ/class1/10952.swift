//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/27.
//

import Foundation

var A = -1
var B = -1

while(true){
    let input = readLine()!.components(separatedBy: " ").map{Int($0)!}
    A = input[0]
    B = input[1]
    if(A == 0 && B == 0){
        break
    }
    print(A + B)
}
