//
//  Swift_Tutorial_01.swift
//  Storyboard_1
//
//  Created by 최준호 on 2022/03/07.
//

import Foundation

func DictionaryTest() {
    typealias StringIntDictionary = [String: Int]
    //typealias를 통해 조금 더 단순하게 표현해볼 수도 있다
    
    var numberForName1: Dictionary<String, Int> = Dictionary<String, Int>()
    
    var numberForName2: [String: Int] = [String: Int]()
    
    var numberForName3: StringIntDictionary = StringIntDictionary()
    
    var numberForName4: [String: Int] = [:]
    
    var numberForName5: [String: Int] = ["JoonHo": 94, "Choi": 1109]
    
    print("DictionaryTest \(numberForName5.count)")
    
}
