//
//  Swift_Tutorial_02.swift
//  Storyboard_1
//
//  Created by 최준호 on 2022/03/08.
//

import Foundation

//if 구문 기본 구현
func IfTest1() {
    let first: Int = 5
    let second: Int = 7
    
    if first > second {
        print("IfTest1: first > second")
    } else if first < second {
        print("IfTest1: first < second")
    } else {
        print("IfTest1: first == second")
    }
}

//if 구문의 다양한 구현
func IfTest2() {
    let first: Int = 5
    let second: Int = 5
    var biggerValue: Int = 0
    
    if (first > second) {
        biggerValue = first
    } else if (first == second) {
        biggerValue = first
    } else if (first < second) {
        biggerValue = second
    } else if (first == 5) {
        biggerValue = 100
    }
    print("IfTest2: \(biggerValue)")
}


//switch 구문 기본 구현
func SwitchTest1() {
    let integerValue: Int = 5
    
    switch integerValue {
    case 0:
        print("SwitchTest1: Value == zero")
    case 1...10:
        print("SwitchTest1: Value == 1~10")
        fallthrough  //다음 case도 실행하게 하는 기능
    case Int.min..<0, 101..<Int.max:
        print("SwitchTest1: Value < 0 or Value > 100")
        break
    default:   //한정된 범위가 명확하지 않다면 필수
        print("SwitchTest1: 10 < Value <= 100")
    }
}


//부동소수 타입의 범위 연산을 통한 switch case 구성
func SwitchTest2() {
    let doubleValue: Double = 3.0
    
    switch doubleValue {
    case 0:
        print("SwitchTest2: Value == zero")
    case 1.5...10.5:
        print("SwitchTest2: Value == zero")
    default:
        print("SwitchTest2: Value == \(doubleValue)")
    }
}


//문자열 switch case 구성
func SwitchTest3() {
    let StringValue: String = "Choi"
    
    switch StringValue {
    case "Joon":
        print("SwitchTest3: Joon")
    case "Ho":
        print("SwitchTest3: Ho")
    case "Korea", "Japan":
        print("SwitchTest3: korea, Japan")
    default:
        print("SwitchTest3: Choi")
    
    }
}


//튜플 switch case 구성
func SwitchTest4() {
    typealias NameAge1 = (name: String, age: Int)
    let tupleValue1: NameAge1 = ("Choi", 27)
    
    switch tupleValue1 {
    case ("Choi", 27):
        print("SwitchTest4: Okay")
    default:
        print("SwitchTest4: No")
    }
    
    typealias NameAge2 = (name: String, age: Int)
    let tupleValue2: NameAge2 = ("choi", 27)
    
    switch tupleValue2 {
    case ("Choi", 27):
        print("SwitchTest4: Okay")
    case ("Choi", _):
        print("SwitchTest4: 이름만")
    case(_, 27):
        print("SwitchTest4: 나이만")
    default:
        print("SwitchTest4: ???")
    }
}


//값 바인딩을 사용한 튜플 switch case 구성
func SwitchTest5() {
    typealias NameAge = (name: String, age: Int)
    let tupleValue: NameAge = ("choi", 27)
    
    switch tupleValue {
    case("choi", 30):
        print("SwitchTest5: okay" )
    case("choi", let age):
        print("SwitchTest5: 이름만 \(age)")
    case(let name, 27):
        print("SwitchTest5: 나이만\(name)")
    default:
        print("SwitchTest5: default")
    }
}


//Where을 사용하여 switch case 확장
func SwitchTest6() {
    let 직급: String = "사원"
    let 연차: Int = 1
    let 인턴인가: Bool = false

    switch 직급 {
    case "사원" where 인턴인가 == true:
        print("SwitchTest6: 인턴입니다")
    case "사원" where 연차 < 2 && 인턴인가 == false:
        print("SwitchTest6: 신입사원입니다")
    case "사원" where 연차 > 5:
        print("SwitchTest6: 5년차 신입")
    case "사원":
        print("SwitchTest6: 사원")
    case "대리":
        print("SwitchTest6: 대리")
    default:
        print("SwitchTest6: ????")
    }
}


//열거형을 입력 값으로 받는 switch 구문
func SwitchTest7() {
    enum School{
        case primary, elementary, middle, high, college, university, graduate
    }
    let 최종학력: School = School.university
    
    switch 최종학력 {
    case .primary:
        print("SwitchTest7: 최종학력은 유치원?")
    case .elementary:
        print("SwitchTest7: 최종학력은 초등학교")
    case .middle:
        print("SwitchTest7: 최종학력은 중학교")
    case .high:
        print("SwitchTest7: 최종학력은 고등학교")
    case .college, .university:
        print("SwitchTest7: 최종학력은 대학교")
    case .graduate:
        print("SwitchTest7: 최종학력은 대학원")
    }
}


//Menu 열거형의 모든 case를 처리하는 switch 구문의 상태
//차후에 Menu 열거형에 추가한 case를 처리하지 않으면 경고를 내어줄 unknown속성
func SwitchTest8() {
    enum Menu1 {
        case chicken
        case pizza
    }
    
    let lunchMenu: Menu1 = .chicken
    
    switch lunchMenu {
    case.chicken:
        print("SwitchTest8: chicken")
    case.pizza:
        print("SwitchTest8: pizza")
    case _:   //띄어쓰기 해야함 case default와 같은 표현
        print("SwitchTest8: default")
    }
    
    enum Menu2 {
        case chicken
        case pizza
        case hamburger
    }
    
    let dinnerMenu: Menu2 = .chicken
    
    switch dinnerMenu {
    case .chicken:
        print("SwitchTest8.Menu2: chicken")
    case .pizza:
        print("SwitchTest8.Menu2: pizza")
    @unknown case _:   //swift는 미래에 추가될 수 있는 알려지지 않은 값에 대해 미리 준비할 수 있도록 권장 case, default에 사용가능
        print("SwitchTest8.Menu2: difault")

    }
    
    
}

//이벤트가 발생하게 되면 앱은 해당 이벤트를 처리할 수 있는 가장 적절한 응답자 객체에게 이벤트 데이터를 전달하고 이를 first responder이라고 한다
//first responder에서 처리되지 않은 이벤트들은 Responder chain을 따라 이벤트를 처리하는 객체를 찾아 거슬러 올라간다 앱의 구조에 따라 동적으로 형성된다

//class Friend {
//    var name : String
//    var city : String
//
//    func changeName(newName: String) {
//        self.name = newName
//    }
//    // (init 생성자)가 필요 메모리에 올린다
//    // init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그 값을 가진 object를 만들 수 있다
//    init(_ name: String, _ city: String) {
//        self.name = name
//        self.city = city
//    }
//}
//var myFriend = Friend(name: "Choi", city: "seoul")      언더스코어 _를 사용하지 않았을때 생성 방식
//var myFriend = Friend("Choi","seoul")
//
////
//struct YoutuberStruct {
//    var name : String
//    var subscribersCount : Int
//}
//
//var devChoi = YoutuberStruct(name: "Choi", subscribersCount: 29)
//
//var devChoiClone = devChoi
// //Struct 복사
//

func OptionalsTest1() {
    var myName: String? = "Joonho"
    print(myName)
    
    switch checkOptionalV
}
// 옵셔널이란 있을 수도 있고 없을 수도 있다 아직 모른다
func OptionalsTest10() {
    var someVariable : Int? = nil
    
    if someVariable == nil {
        someVariable = 90
    }
}
////언래필이란
//if let otherVairable = someVariable
//
//
//someVariable = nil
//let myValie = someVariable ?? 10   // 값이 없으면 10을 넣겠다
//
//    func unwrap(parameter: Int?) {
//    print("unwrap() called")
//    guard let unWrappedParam = parameter else{
//        return
//    }
//    print("unWrappedParam : ")
//}
//
//  ViewController.swift
//  Stroyboard_7
//
//  Created by 최준호 on 2022/01/17.

// lazy 키워드
// 고차함수 Higher Order Functions
import UIKit
var myArray = [3, 4, 5, 6, 7, 8, 10 ,20]

var orderArray = myArray.sorted()

var descendingArray = myArray.sorted(by: >)




//
//struct Pet {
//    init() {
//        print("Pet이 생성되었다")
//    }
//}
//struct Friend {
//    var name: String
//    
//    lazy var pet: Pet = Pet()   //당장 메모리에 올리지 않고 사용할떄 접근했을때 올린다
//    //값이 넘어올때 발동되는 개념
//    
//    init(_ name: String) {
//        self.name = name
//        print("friend가 생성됨")
//    }
//}
//
//
//func getName(_ name: String) -> String {
//    return "내 이름은 \(name)"
//}
//
//


//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        var myFriend = Friend("Choi")
//        myFriend.pet
//
//        var getNameClosure : (String) -> String
//
//        func sayHello ( getName: (String) -> String, name: String ) -> String {
//            return getName(name)
//        }
//        // Do any additional setup after loading the view.
//        myArray.sort()
//        myArray.sort(by: >)
//    }
//
//
//}


