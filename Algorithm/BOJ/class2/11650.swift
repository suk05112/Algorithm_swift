//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/01.
//

import Foundation

let n = Int(readLine()!)!
var points = [[Int]](repeating: Array(repeating: 0 ,count: 2 ), count: n)


for i in 0..<n{
    let input = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}
    points[i] = input
}
points.sort(by: {
    if($0[0] < $1[0]){
        return true
    }else if($0[0] == $1[0]){
        return $0[1] < $1[1]
    }

    return false
})

points.forEach{
    print($0[0], $0[1])
}

//5
//-3 4
//-4 5
//-2 1
//-3 -3
//-3 2
