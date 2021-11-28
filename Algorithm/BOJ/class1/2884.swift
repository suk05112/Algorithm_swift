//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/28.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{Int($0)!}

var H = input[0]
var M = input[1]

if((M-45)<0){
    M = 60 + (M-45)
    if(H == 0){
        H = 23
    }else{
        H -= 1
    }
}
else{
    M -= 45
}

print(H, M)
