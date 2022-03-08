//
//  Swift_Tutorial_02.swift
//  Storyboard_1
//
//  Created by 최준호 on 2022/03/08.
//

import Foundation

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
//// 옵셔널이란 있을 수도 있고 없을 수도 있다 아직 모른다
//var someVariable : Int? = nil
//
//if someVariable == nil {
//    someVariable = 90
//}
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


