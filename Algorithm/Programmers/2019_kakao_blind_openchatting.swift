//
//  main.swift
//  Algorithm
//
//  Created by 한수진 on 2021/11/15.
//

import Foundation


func solution(_ record:[String]) -> [String] {
    


    var user: [String: String] = [:]
    var result: [String] = []
    
    for record in record {
        print(record.split(separator: " "))
        if(record.split(separator: " ").count>2){
            let uid = String(record.split(separator: " ")[1])
            let nickname = String(record.split(separator: " ")[2])
            user[uid] = nickname
        }
    }
    
    for record in record {
        let key = String(record.split(separator: " ")[1])
        switch (String(record.split(separator: " ")[0])){
            
            case "Enter":
                result.append(enter(nickname: user[key]!))
            case "Leave":
                result.append(leave(nickname: user[key]!))
            default:
                print("Error")
        }
    }
    
    print("dictionary\n", user)

    func enter(nickname: String)-> String{
        return nickname+"님이 들어왔습니다."
    }
    
    func leave(nickname: String)-> String{
        return nickname+"님이 나갔습니다."
    }
    
    return result

}




print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]
))

//["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]
//["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."]
