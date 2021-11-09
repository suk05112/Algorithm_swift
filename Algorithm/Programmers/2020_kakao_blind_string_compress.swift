//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/10/28.
//

//문자열 나온 갯수 : count = 1
// 길이가 7이면 int(7/2) = 3, 2, 1 역순으로 반복
//step = 3, 2, 1(n)
//temp = str[0~step]
    //index = (str.count/step)만큼 반복
        //start = index * step
        //current = str[start~start+step]
        //if temp == current
            //count++
        //else
            //if(count = 1)
                //result += temp
                //count = 1
            //else
                //result += String(count).map { String($0) } //?
                //result += temp
                //temp = current
                //count = 1

//if count != 1 { result += String(count).map { String($0) } }


//반복 후 남은 것 추가 [0,2],[3,5], 7
//[size*(str%size)...]
//let remains = str[(str.count / cutSize * cutSize)...]
//result += remains


//if result.count < minLength { minLength = result.count }



import Foundation

func solution(_ s:String) -> Int {
    let str = s.map { String($0) }
    var minOfstr:Int = str.count
    
    for size in (0...(str.count/2)).reversed(){
        var step = size+1
        var temp = str[0..<step]
        var count = 1
        var result = [String]()
        
        for index in (1..<str.count/step){
            var current = str[step*index..<index*step+step]
            print("temp = ", temp, "current = ", current)
            if(temp == current){
                count += 1
            }
            else{
                if(count == 1){
                    result += temp
                }
                else{
                    result += String(count).map { String($0) }
                    result += temp
                }
                count = 1
            }
            temp = current

        }
        
        if count != 1{
            result += String(count).map{ String($0)}
        }
        result += temp

        let remains = str[(str.count - (str.count%(step)))...]
        result += remains

        if(result.count<minOfstr){
            minOfstr = result.count
        }
    }
    
    return minOfstr
}


print(solution("a"))
//print(solution("aabbaccc")) //7 2a2ba3c
//print(solution("ababcdcdababcdcd")) //9
//print(solution("abcabcdede")) //8
//print(solution("abcabcabcabcdededededede")) //14
//print(solution("xababcdcdababcdcd")) //17
