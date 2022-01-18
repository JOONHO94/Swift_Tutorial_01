//
//  ViewController.swift
//  Storyboard_1
//
//  Created by 최준호 on 2022/01/11.
//

//Git huv 연동방법

import UIKit

protocol Naming {
    func getName() -> String
}
protocol Aging {
    func getAge() -> Int
}
typealias Friendable = Naming & Aging

struct Friend : Friendable {
    var name : String
    var age : Int
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
}
struct Pet {
    init() {
        print("pet이 생성되었다")
    }
}
struct Friend1 {
    var name: String
    lazy var pet: Pet = Pet()
    
    
}

class ViewController: UIViewController {
    // UInt는 -부호를 포함하지 않는 양의 정수만을 표현
    //swift에서 ;은 안 붙여도 된다
    //var는 값의 변경이 가능
    //let은 값의 변경이 불가능
    
    
//    protocol Aging {
//        func getAge() -> Int
//    }
    
    //typealias Friendable = Naming & Aging
    
    var myArray : [Int] = [0, 1, 2, 3, 4, 5, 6, 7]
    var isChange = false   //이미지 확대 축소 상태 확인
    var switchon: UIImage?
    var switchoff: UIImage?
            
    //@IbOutlet 호출되는 action을 정의해둔것
    //@IBAction 접근하기 위한 변수 객체값 선언
    @IBOutlet var btnChangesize: UIButton!   // var 변수명 : 기능 선언?
    @IBOutlet var swiftImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //typealias Friendable = Naming & Aging
        
        for item in myArray {
            print("item : \(item)")
        }
        //배열 요소를 아이템에 넣고 출력을 하겠다
        
        for test in myArray where test % 2 != 0 {
            print ("홀수: \(test)")
        }
        //where 조건문
    }
    
//    @IBAction func btnChangeSizeImage(_ sender: UIButton) {
//        let size:CGFloat = 2.0
//        var changeWidth:CGFloat, changeHeight:CGFloat
//    }
//    @IBAction func swichImage(_ sender: UISwitch) {
//
//    }
    
    //클로저의 표현식 {(parameters)}
}

