//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/28.
//

import Foundation

let n = Int(readLine()!)!

for i in 1...n{
    for _ in 0..<n-i{
        print(" ", terminator: "")
    }
    for _ in 0..<i{
        print("*", terminator: "")
    }
    print("")
}
        

