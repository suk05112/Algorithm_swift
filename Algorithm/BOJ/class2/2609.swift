//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/01.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}

for i in (1...input.max()!).reversed(){

    if(input[0]%i==0 && input[1]%i==0){
        print(i)
        print(i*(input[0]/i)*(input[1]/i))
        break
    }
}
