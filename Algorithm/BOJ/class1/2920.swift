//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/28.
//

import Foundation

let scale = readLine()!.components(separatedBy: " ").map{Int($0)!}

var pre = scale[0]
var chk = 0

for i in 1..<8{
    chk = pre - scale[i]
    if(chk.magnitude != 1){
        print("mixed")
        break
    }
    pre = scale[i]

}

if(chk == 1){
    print("descending")
}
else if(chk == -1){
    print("ascending")
}
