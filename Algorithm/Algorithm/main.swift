//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/10/21.
//

import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    //해시 : 임의의 크기를 가진 데이터를 고전된 데이터의 크기로 변환시키는 것
    //장르멸로 재생횟수 더해서 가장큰거 두개 구하기
    //구해진 두개의 장르 중 재생 많이 된 노래 찾기
        //만약 같으면 고유번호로 순위 메기기
        //먄약 노래가 하나면 하나의 곡만 선택
    
    //해시 : (키,값) = (장르, 총 횟수), (장르, [정렬된 노래 고유번호])
    
    var numOfplayGenre : [String: Int] = [:]
    var idsOfbestGenre: [String: [Int]] = [:]
    print("chk1")
    
    for idx in 0..<genres.count{
        let genre = genres[idx]
        let play = plays[idx]
        
        if let cnt = numOfplayGenre[genre]{
            numOfplayGenre[genre]! = cnt  + play
            idsOfbestGenre[genre]!.append(idx)
        }
        else{
            numOfplayGenre[genre] = play
            idsOfbestGenre[genre] = [idx]

        }

    }
    
    print(numOfplayGenre)
    print(idsOfbestGenre)
    
    let bestGenre: [String] = Array(numOfplayGenre.keys).sorted{
        return numOfplayGenre[$0]! > numOfplayGenre[$1]!
    }
    
    var answer: [Int] = []
    
    for genre in bestGenre {
        let IDs = idsOfbestGenre[genre]!.sorted{
            return plays[$0] > plays[$1]
        }
        answer.append(IDs[0])
        if IDs.count > 1{
            answer.append(IDs[1])
        }
    }
    
    
    
    return answer
}

var genres = ["classic", "pop", "classic", "classic", "pop"]
var plays = [500, 600, 150, 800, 2500]

print(solution(genres,plays))
