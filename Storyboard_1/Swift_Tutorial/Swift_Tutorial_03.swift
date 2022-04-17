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
    
}

func ForTest2() {
    let friends: [String: Int] = ["joon": 94, "ho": 11, "choi": 09]
    for tuple in friends {
        print(tuple)
    }
    
}



//특정조건이 성립하는 한 내부의 코드를 반복해서 실행
func WhileTest() {
    var names: Array<String> = ["joon", "ho"]
    print("ssssssssss")
    while names.isEmpty == false {
        print("WhileTest: \(names.removeFirst())")
        
    }
}



//do while 구문과 비슷 1회 실행한후 조건이 성립하면 반복 실행
func RepeatWhileTest() {
    var names: [String] = ["joon", "ho", "choi"]
    repeat {
        print("RepeatWhileTest: \(names.removeFirst())")
    } while names.isEmpty == false
}



//func
func hello(name: String) -> String {
    return "Hello\(name)"
}
func FuncTest() {
    let helloJenny: String = hello(name: "jenny")
}



// 매개변수마다 기본값을 지정할 수 있습니다. 즉, 매개변수가 전달되지 않으면 기본값을 사용한다
func FuncTest2(_ name: String, times: Int = 3) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello\(name)" + "  "
    }
    return result
}


func SortTest() {
    var arr: Array = [1,2,3,4,5]
}






//










