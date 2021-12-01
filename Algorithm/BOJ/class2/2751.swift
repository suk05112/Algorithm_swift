//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/01.
//

import Foundation

let n = Int(readLine()!)!
var arr:[Int] = []

for _ in 0..<n{
    arr.append(Int(readLine()!)!)
}

arr.sorted(by: {$0<$1}).forEach{
    print($0)
}

