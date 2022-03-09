//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/09.
//

import Foundation

let N = Int(readLine()!)
let budgets = readLine()!.split(separator: " ").map{ Int(String($0))!}
let M = Int(readLine()!)!

var min = 0; var max = budgets.max()!
var ans:Int

while(min<=max){
    var count = 0
    let mid = (min+max)/2

    for budget in budgets {
        if budget<=mid{
            count += budget
        }
        else{
            count += mid
        }
    }
    
    if count<=M{
        ans = min
        min = mid+1
    }
    else{
        max = mid-1
    }

}

print(max)

/*
6
2 9 20 11 20 30
50
답 : 9, 출력 : 10
 
4
1 5 6 100
18

결과 : 5
정답 : 6
 
4
120 110 140 150
485
 
5
70 80 30 40 100
450
*/
