//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/27.
//

//첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제

import Foundation

let n = Int(readLine()!)!

for i in 1...n{
    for _ in 1...i{
        print("*", terminator: "")
    }
    print("")
}

