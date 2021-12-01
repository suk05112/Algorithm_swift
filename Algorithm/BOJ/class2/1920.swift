//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/01.
//

import Foundation

let n = Int(readLine()!)!
var array_n = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}

let m = Int(readLine()!)
let array_m = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}

array_n.sort()
//print(array_n)

for item in array_m{
    print(BinarySearch(arr: array_n, target: item))
}

func BinarySearch(arr: [Int], target: Int) -> Int{
    var start = 0
    var end = arr.count - 1
    var mid = (start + end)/2
    
    while end >= start{
        if arr[mid] == target{
            return 1
        }else if arr[mid] >= target{
            end = mid - 1
        }else{
            start = mid + 1
        }
        
        mid = (start + end) / 2
    }
    return 0
}

