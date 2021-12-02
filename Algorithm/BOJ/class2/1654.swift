//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/01.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}
let K = input[0]; let N = input[1]
var lines:[Int] = []

for _ in 0..<K{
    lines.append(Int(readLine()!)!)
}

var start = 1
var end = lines.max()!
var mid = (start + end)/2
//print("start : ", start, "end : ", end, "\n")
//var quoti:Int = 0
//
//while(quoti != N){
//    quoti = 0
//
//    lines.forEach{
//        quoti += $0/mid
//    }
//
//    print("quoti = ", quoti, "mid = ", mid)
//
//    if(quoti > (N-1)){
//        start = mid
//
//    }else if(quoti < (N-1)){
//        end = mid
//    }
//    else{
//        print("정답 : ", mid-1)
//        break
//    }
//    print("start : ", start, "end : ", end, "\n")
//    mid = (start + end)/2
//
//}

var result = 0

while (start <= end){
    let middle = (end + start) / 2
    var temp = 0
    for line in lines{
        temp += line / middle
        
    }
    if temp >= N{
        if result < middle{
            result = middle
        }
        start = middle + 1
        
    }
    else {
        end = middle - 1
        
    }
}

print("result ", result)
print("out mid :" , mid)

