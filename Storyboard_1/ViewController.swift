//
//  ViewController.swift
//  Storyboard_1
//
//  Created by 최준호 on 2022/01/11.
//

//Git huv 연동방법

import UIKit

class ViewController: UIViewController {
    // UInt는 -부호를 포함하지 않는 양의 정수만을 표현
    //swift에서 ;은 안 붙여도 된다
    //var는 값의 변경이 가능
    //let은 값의 변경이 불가능
    //@IbOutlet 호출되는 action을 정의해둔것
    //@IBAction 접근하기 위한 변수 객체값 선언
    @IBOutlet var btnChangesize: UIButton!   // var 변수명 : 기능 선언?
    @IBOutlet var swiftImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DictionaryTest()
        
        SetTest1()
        SetTest2()
        
        EnumTest1()
        EnumTest2()
        
        IfTest1()
        IfTest2()
        
        SwitchTest1()
        SwitchTest2()
        SwitchTest3()
        SwitchTest4()
        SwitchTest5()
        SwitchTest6()
        SwitchTest7()
        SwitchTest8()
        
        ForTest1()
        ForTest2()
        WhileTest()
        print(FuncTest2("Joon"))
        
        StructTest1()
      
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //뷰 계층에 추가되어 화면에 나타나기 직전에 호출되는 메서드 여러번 호출 가능
        //다른 뷰로 이동했다가 다시 돌아올떄 수행해야 하는 작업이 있으면 이 메서드를 통해 수행
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear (animated)
        //화면에 나타났을때 호출되는 메서드
        print("viewDidAppear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        //뷰 계층에서 사라지기 직전에 호출되는 메서드
        print("viewDidDisappear")
        
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //
        print("viewDidLayoutSubviews")
    }
    
}

