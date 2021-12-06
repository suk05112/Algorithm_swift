//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/06.
//

import Foundation

//let input = readLine()!.split(separator: " ").map({Int($0)})
//let tree_length = readLine()!.components(separatedBy: " ").map({Int($0)!})
var file = FileIO()
let N = file.readInt()
let need_length = file.readInt()

var tree_length:[Int] = []

for _ in 0..<N {
    tree_length.append(file.readInt())
}

//let (N, need_length) = (input[0]!, input[1]!)

var start = 0
var end = tree_length.max()!

while(start <= end){
    
    var sum = 0
    let mid = (start+end)/2
    
    for tree in tree_length{
        if tree > mid{
            sum += tree - mid
        }
    }
    /*
    tree_length.forEach{
        let cut = $0-mid
        if (cut > 0){
            sum += cut
        }
    }
    */
    if(sum<need_length){
        end = mid - 1
    }
    else{
        start = mid + 1
    }

}
        
print("정답 절단길이: ", end)

// 라이노님의 FileIO
final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)]
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() }
        if now == 45{ isPositive.toggle(); now = read() }
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> String {
        var str = ""
        var now = read()
        
        while now == 10
                || now == 32 { now = read() }
        
        while now != 10
                && now != 32 && now != 0 {
            str += String(bytes: [now], encoding: .ascii)!
            now = read()
        }
        
        return str
    }
}
