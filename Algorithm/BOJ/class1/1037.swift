//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/27.
//

import Foundation


let n = Int(readLine()!)!
let measure = readLine()!.components(separatedBy: " ").map{Int($0)!}

print(measure.min()! * measure.max()!)
