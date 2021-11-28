//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/28.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n{
    let results = Array(readLine()!)
    
    var score = 0
    var count = 0
    
    for result in results {
        score += 1
        
        if(result == "X"){
            score = 0
        }
        count += score
    }
    
    print(count)

}

