//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/10/16.
//

import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {

    func binarySearch(start: Int64, end: Int64) -> Int64{
        if start > end {return -1}
        
        let mid = (start+end)/2
        let midSum = available(in: mid)
        
        if midSum >= n { //체크할 인원보다 많으면
            if available(in: mid-1) < n{ //시간을 1분 줄였는데 체크할 인원보다 적으면 mid 리턴
                return mid
            }
            return binarySearch(start: 0, end: mid-1) //시간을 줄이고
        }
        
        //체크할 인원보다 적은을때
        if available(in: mid+1) >= n{ //시간 1분 늘렸는데 체크할 인원보다 많으면 mid+1 리턴
            return mid+1
        }
        
        return binarySearch(start: mid+1, end: end) //위 if문에 안걸리면 시간 늘린다
    }


    func available(in minute: Int64) -> Int64{
        var sum: Int64 = 0
        for i in 0..<times.count{
            sum += minute/Int64(times[i])
        }
        return sum
    }
    
    let min = Int64(times.min()!)
    let max = Int64(n) * Int64(times.max()!)
    
    return binarySearch(start: min, end: max)
}

