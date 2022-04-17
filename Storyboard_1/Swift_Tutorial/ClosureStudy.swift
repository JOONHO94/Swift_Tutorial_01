//
//  ClosureStudy.swift
//  Storyboard_1
//
//  Created by 최준호 on 2022/04/17.
//

import Foundation

//일정 기능을 하는 코드를 하나의 블록으로 모아놓는 것을 말한다
//변수나 상수가 선언된 위치에서 참조를 획득하고 저장 가능

//클로저는 세가지 형태가 있다
//1. 이름이 있으면서 어떤 값도 획득하지 않는 전역함수의 형태
//2. 이름이 있으면서 다른 함수 내부의 값을 획득할 수 있는 중첩된 함수의 형태
//3. 이름이 없고 주변 문액에 따라 값을 획득할 수 있는 축약 문법으로 작성된 형태
// func 함수도 클로저의 한 형태이다

//{ (매개변수) -> 반환타입 in
//    실행코드
//}

// 1 - 기본 클로저
//영문 알파벳을 내림차순으로 정렬
let names: [String] = ["Choi", "joon", "ho", "man"]

func backwards (first: String, second: String) -> Bool {
    print("\(first), \(second) 비교 중")
    return first > second
}

let reversed: [String] = names.sorted(by: backwards)

let reversed_Closure1: [String] = names.sorted(by: { (first: String, second: String) -> Bool in return first > second } )


// 2 - 후행클로저

//후행 클로저는 맨 마지막 전달인자로 전달되는 클로저에만 해당되므로 전달인자로 클로저 여러 개를 전달할 때는 맨 마지막 클로저만 후행 클로저로 사용할 수 있다
let reversed_Closure2: [String] = names.sorted() { (first: String, second: String) -> Bool in return first > second }
//소괄호도 생략이 가능
let reversed_Closure3: [String] = names.sorted {(first: String, second: String) -> Bool in return first > second }

//다중 예시
func doSomething(do: (String) -> Void,
                 onSuccess: (Any) -> Void,
                 onFailure: (Error) -> Void) {
    //
}
//doSomething { (someString: String)
//
//} onSuccess: { (result : Any) in
//
//} onFailure: { (error: Error) in
//
//}

//문맥을 이용한 타입 유추 전달인자로 타입 생략이 가능
let reversed_Closure4: [String] = names.sorted {(first, second) in return first > second}


// 3 - 단축인자이름

//첫 번째 전달인자부터 $0,$1,$2,$3으로 표현 가능
let reversed_Closure5: [String] = names.sorted{
    return $0 > $1
}
//암시적 반환
let reversed_Closure6: [String] = names.sorted {$0 > $1}

// 4 - 연산자 함수
let reversed_Closure7: [String] = names.sorted(by: >)


//5 - 값 획득
//클로저는 자신이 정의된 위치의 주변 문맥을 통해 상수나 변수를 획득 할 수 있다
//클로저는 비동기 작업에 많이 사용된다 클로저를 통해 비동기 콜백을 작성하는 경우, 현재 상태를 미리 획득해두지 않으면 실제로 클로저르의 기능을 실행하는 순간에는 주변의 상수나 변수가 이미 메모리에 존재하지 않는 경우가 발생한다

//6 - 탈풀 클로저
//함수의 전달인자로 전달한 클로저가 함수 종료후에 호출될 때 클로저가 함수를 탈출한다
//클로저를 매개변수로 갖는 함수를 선언할때 매개변수 이름의 클론 뒤에 @escaping 키워드를 사용하여 클로저가 탈출하는 것을 허용한다고 명시 가능









