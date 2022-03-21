//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2022/03/09.
//

import Foundation

var list = [Int](repeating: 1, count: 100001)

for i in 0...10000{
    let num = get_not_selfnumber(i: i)
    list[num] = 0

}

for idx in 0...10000{
    if list[idx] == 1{
        print(idx)
    }
}

func get_not_selfnumber(i: Int) -> Int{

    return i + (i%10000)/1000 + (i%1000)/100 + (i%100)/10 + (i%10)/1
}
