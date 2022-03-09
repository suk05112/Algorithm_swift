//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/01.
//

import Foundation

//let input = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}
let input = readLine()!.split(separator: " ").map{ Int(String($0))!} //더 빠른 방법
 
let K = input[0]; let N = input[1]
var lines:[Int] = []

for _ in 0..<K{
    lines.append(Int(readLine()!)!)
}

var start = 1
var end = lines.max()!/(K/lines.count)
var mid = 0

//upper bound
end += 1
while(start<end){
    var count = 0
    mid = (start+end)/2
    for line in lines {
        count += (line/mid)
    }
    
    if count<N{ //랜선이 부족하면 길이를 더 짧게
        end = mid
    }
    else{
        start = mid+1
    }
}

print(end-1)


/*
var start = 1
var end = lines.max()!
var mid = (start + end)/2


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

*/
