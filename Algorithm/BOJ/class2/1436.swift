//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/29.
//

import Foundation

let N = Int(readLine()!)
var i = 665
var count = 0

while(count != N){
    i += 1
    
    var temp = i
    var numberOf6 = 0

    while(temp > 0){
        if(temp%10 == 6){
            numberOf6 += 1
        }else if(numberOf6 < 3){
            numberOf6 = 0
        }
        temp = temp/10
    }
    if (numberOf6>=3){
        count += 1
    }

}

print(i)



