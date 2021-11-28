//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/26.
//

import Foundation

var dp:[[Int]] = Array(repeating: Array(repeating: 0, count: 30), count: 30)

for i in 0..<30{
    dp[i][i] = 1
    dp[i][0] = 1
}

for i in 2..<30{
    for j in 1..<30{
        dp[i][j] = dp[i-1][j-1] + dp[i-1][j]
    }
}

for i in 0..<30{
    print(dp[i], "\n")
}

let n = Int(readLine()!)!

for _ in 0..<n{
    let input = readLine()?.components(separatedBy: " ")
    let N = Int(input![0])!
    let M = Int(input![1])!
    
    print(dp[M][N])

}

//
//let startTime = CFAbsoluteTimeGetCurrent()
//let durationTime = CFAbsoluteTimeGetCurrent() - startTime
//print("경과 시간: \(durationTime)")


