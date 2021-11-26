//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/26.
//
//. 일단 세준이는 자기 점수 중에 최댓값을 골랐다. 이 값을 M이라고 한다. 그리고 나서 모든 점수를 점수/M*100으로 고쳤다.
//세준이의 성적을 위의 방법대로 새로 계산했을 때, 새로운 평균을 구하는 프로그램을 작성하시오.



import Foundation

let n = readLine()
let scores = readLine()!.components(separatedBy: " ").map{Int($0)!} //Optional<String>

let max = scores.max()
var avg:Float = 0

for score in scores {
    print(Float((score*100)/max!))
    avg += (Float((score*100))/Float(max!))
}

print(avg/Float(n!)!)
print(scores)


