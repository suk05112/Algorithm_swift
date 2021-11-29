//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/29.
//

import Foundation

let n = Int(readLine()!)!
var words = Set<String>()

for _ in 0..<n{
    words.insert(readLine()!)
}

let sorted = words.sorted(by: {(first, sec) -> Bool in
    if(first.count < sec.count){
        return true
    }
    else if(first.count == sec.count){
        if(first < sec){
            return true
        }
    }
    return false
    
})

for sort in sorted {
    print(sort)
}


