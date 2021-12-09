//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/12/09.
//

import Foundation

let testcase = Int(readLine()!)!
var result = ""

for i in 0..<testcase{
    print("i = ", i)
    let input = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}
    var documents = readLine()!.components(separatedBy: " ").map{ Int(String($0))!}

    let N = input[0]; var M = input[1]
    var start = 0; var end = N-1
    var count = 0
        
    while(!documents.isEmpty){
        print("in while")
        let max_importance = documents.max()!
        let doc_size = documents.count
        start = start%doc_size
        end = end%doc_size
//        print("start = ", start, "end = ", end, "doc_size = ", doc_size, "M = ", M)
//        print("docu[start] = ", documents[start%doc_size], "max_importance = ", max_importance)
        
        if documents[start%doc_size]<max_importance{
            start = (start+1)%doc_size
            end = (end+1)%doc_size
        }
        else{
            documents.remove(at: start)
            count += 1
//            print("start = ", start, "end = ", end, "M =", M)

            if(start == M){
                print(count)
                result += String(count) + " "
                break
            }
            if (M>start){
                M>0 ? (M-=1) : (M=M)
            }
            end-1>0 ? end-=1 : (end = doc_size-1)
            start>1 ? (start = start%(doc_size-1)) : (start = doc_size-1)
            


        }
//        print("변경 후")
//        print(documents, "\n")
    }
    print("result1 : ", result)

}
print("result2 : ", result)

