//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/25.
//

import Foundation

let N = Int(readLine()!)!
let F = Int(readLine()!)!

var devide_100 = Int(N/100)*100

while(devide_100%F != 0){
    devide_100 += 1
}

let startIdx = String(devide_100).index(String(devide_100).endIndex, offsetBy: -2)
print("devide_100", String(devide_100)[startIdx...])

