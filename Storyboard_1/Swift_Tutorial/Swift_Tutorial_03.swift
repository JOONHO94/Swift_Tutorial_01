//
//  Swift_Tutorial_03.swift
//  Storyboard_1
//
//  Created by 최준호 on 2022/03/12.
//

import Foundation


//for in 반복 구문의 활용
func ForTest1() {
    for i in 0...2 {
        print("ForTest1_1: \(i)")
    }
    for i in 0...5 {
        if i.isMultiple(of: 2) {
            continue  //isMultiple 배수떄 실행
        }
        print("ForTest1_2: \(i)")
    }
    
    let helloSwift: String = "Hello Swift"
    
    for char in helloSwift {
        print("ForTest1_3: \(char)")   //글자 하나 하나를 출력
    }
    
    var result: Int = 1
    //시퀀스에 해당하는 값이 필요 없다면 와일드 카드 식별자(_)룰 사용하면 된다
    for _ in 1...3 {
        result *= 10
    }
    print("ForTest1_4: \(result)")
    
    //150p
}
