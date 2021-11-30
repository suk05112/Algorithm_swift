//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/30.
//

import Foundation

var input = ""

while(true){

    input = readLine()!
    if(input == "0"){
        break
    }
    let array = Array(input).reversed()
//    print(array.reduce("", {String($0)+String($1)}))

    if(input == array.reduce("", {String($0)+String($1)})){
        print("yes")
    }
    else{
        print("no")
    }
}
