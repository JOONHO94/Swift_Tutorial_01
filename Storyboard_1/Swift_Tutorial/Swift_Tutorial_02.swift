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



func OptionalsTest1() {
    var myName: String? = "Joonho"
    print(myName)
    
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




//구조체정의를 마친 후 인스턴스를 생성하고 초기화 할때는 기본적으로 생성되는 맴버 와이즈 이니셜라이저를 사용
struct BasicInformation {
    var name: String
    var age: Int
}

var ChoiInfo: BasicInformation = BasicInformation(name: "Choi", age: 27)
let JoonInfo: BasicInformation = BasicInformation(name: "Joonho", age: 27)

func StructTest1() {
    ChoiInfo.age = 100
    ChoiInfo.name = "Joonho"
    print("StructTest1: \(ChoiInfo.age)")
    print("StructTest1: \(ChoiInfo.name)")
    
}




//swift class는 부모클래스가 없더라도 상속없이 단독으로 정의가 가능
//class는 상속 받을 수 있기 때문에 상속 받을 때는 클래스 이름 뒤에 :을 써주고 부모클래스 이름을 명시
class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var Joonho: Person = Person()
let Choi: Person = Joonho   //Joonho Class의 참조를 할당
let AnotherChoi: Person = Person()   //새로운 인스턴스를 생성

func ClassTest1() {
    var Choi: Person = Person()
    Choi.height = 123.4
    Choi.weight = 123.4

}




//
//이벤트가 발생하게 되면 앱은 해당 이벤트를 처리할 수 있는 가장 적절한 응답자 객체에게 이벤트 데이터를 전달하고 이를 first responder이라고 한다
//first responder에서 처리되지 않은 이벤트들은 Responder chain을 따라 이벤트를 처리하는 객체를 찾아 거슬러 올라간다 앱의 구조에 따라 동적으로 형성된다

class ChoiFriend {
    var name : String
    var city : String

    func changeName(newName: String) {
        self.name = newName
    }
    // (init 생성자)가 필요 메모리에 올린다
    // init으로 매개변수를 가진 생성자 메소드를 만들어야 매개변수를 넣어서 그 값을 가진 object를 만들 수 있다
    init(_ name: String, _ city: String) {
        self.name = name
        self.city = city
    }
}
//var myFriend = ChoiFriend(name: "Choi", city: "seoul")      //언더스코어 _를 사용하지 않았을때 생성 방식
var myFriend = ChoiFriend("Choi","seoul")

//
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var devChoi = YoutuberStruct(name: "Choi", subscribersCount: 29)

var devChoiClone = devChoi
 //Struct 복사




//저장 프로퍼티의 선언 및 인스턴스 생성
struct CoordinatePoint {
    var x: Int
    var y: Int
}
let Point: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

class Position {
    var point: CoordinatePoint   //저장 프로퍼티(변수) 변경될 수 있음을 뜻합니다
    let name: String   //저장 프로퍼티 (상수)
    
    //프로퍼티 기본값을 지정해주지 않는다면 이니셜라이저를 따로 정의해주어야 한다
    init(name: String, currentPoint: CoordinatePoint) {
        self.name = name
        self.point = currentPoint
    }
    //사용자 정의 이니셜라이저를 호출해야만 한다
    //그렇지 않으면 프로퍼티 초깃값을 할당할 수 없기 때문에 인스턴스 생성이 불가능
}

let JoonPosition: Position = Position(name: "Joonho", currentPoint: Point)

//저장 프로퍼티의 초깃값 지정
//인스턴스를 생성할때 이니셜라이저를 통해 초깃값을 보내야 하는 이유는 프로퍼티가 옵셔널이 아닌 값으로 선언되어 있기 때문이다
struct CoordinatePoint_01 {
    var x: Int = 0
    var y: Int = 0
}

let Point_01: CoordinatePoint_01 = CoordinatePoint_01()  //프로퍼티의 초깃값을 할당했다면 굳이 전달인자로 넘길 필요가 없습니다
let PointAnother_01: CoordinatePoint_01 = CoordinatePoint_01(x: 10, y: 5)

class Position_01 {
    var point: CoordinatePoint_01 = Point_01   //저장 프로퍼티(변수) 변경될 수 있음을 뜻합니다
    var name: String = "Unknown"   //저장 프로퍼티
}

let JoonPosition_01: Position_01 = Position_01()




//옵셔널 저장 프로퍼티
struct CoordinatePoint_02 {
    var x: Int
    var y: Int
}

class Position_02 {
    var point: CoordinatePoint_02?   //Optionals 생성
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

let JoonPosition_02: Position_02 = Position_02(name: "Joonho")




//지연저장 프로퍼티
//복잡한 클래스나 구조체를 구현할때 많이 사용 굳이 모든 저장 프로퍼티를 사용할 필요가 없다면  불필요한 성능저하나 공간낭비를 줄여주기 위해 사용
struct Pet {
    init() {
        print("Pet이 생성되었다")
    }
}
struct Friend {
    var name: String
    
    lazy var pet: Pet = Pet()   //당장 메모리에 올리지 않고 사용할떄 접근했을때 올린다
    //값이 넘어올때 발동되는 개념
    
    init(_ name: String) {
        self.name = name
        print("friend가 생성됨")
    }
}

var LazybarTest01: Friend = Friend("Joonho")

struct CoordinatePoint01 {
    var x: Int = 0
    var y: Int = 0
}

class Position01 {
    lazy var point = CoordinatePoint01()
    let name: String
    
    init(_ name: String) {
        self.name = name
    }
}

let JoonPosition01: Position01 = Position01("Joonho")   //이 코드를 통해 point 프로퍼티로 처음 접근할때 CoordinatePoint01가 생성된다




//메서드로 구현된 접근자와 설정자
struct CoordinatePoint02 {
    var x: Int   //저장 프로퍼티
    var y: Int  //저장 프로퍼티
    //대칭점을 구하는 메서드 - 접근자
    //self는 타입 자기 자신을 뜻한다
    //self 대신 CoordinatePoint02 사용해도 무방
    func oppositePoint() -> Self {
        return CoordinatePoint02(x: -x, y: -y)
    }
    //대칭점을 설정하는 메서드 - 설정자
    //mutating 구조체의 매서드가 구조체 내부에서 데이터 수정 할떄는 mutating키워드 선언
    mutating func setOppositePoint(_ opposite: CoordinatePoint02) {
        x = -opposite.x
        y = -opposite.y
    }
}




//연산프로피터의 정의와 사용
struct CoordinatePoint03 {
    var x: Int  //저장 프로퍼티
    var y: Int   //저장 프로퍼티
    //접근자
    var oppositePoint: CoordinatePoint03 {
        get{
            return CoordinatePoint03(x: -x, y: -y)
        }
        
        //지정자
        set(oppositePoint) {
            x = -oppositePoint.x
            y = -oppositePoint.y
        }
    }
}

var JoonPosition03: CoordinatePoint03 = CoordinatePoint03(x: 10, y: 5)
//print(JoonPosition03)     CoordinatePoint03(x: 10, y: 5)
//print(JoonPosition03.oppositePoint)     CoordinatePoint03(x: -10, y: -5)

//JoonPosition03.oppositePoint = CoordinatePoint03(x: 10, y: 15)
//print(JoonPosition03)     CoordinatePoint03(x: -10, y: -15)





class Position02 {
    var point: CoordinatePoint02?   //Optionals 생성
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

let JoonPosition02: Position02 = Position02(name: "Joonho")










