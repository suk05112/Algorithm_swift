//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2022/03/21.
//

import Foundation

let N = Int(readLine()!)!
var count = 99

if N<100{
    print(N)
}
else if N==1000{
    print(144)
}
else{
    for i in 100...N{
        let n1 = (i%1000)/100
        let n2 = (i%100)/10
        let n3 = (i%10)/1
        
        if (n2-n1) == (n3-n2){
//            print("hansu: ", i)
            count += 1
        }
    }
    print(count)

}


