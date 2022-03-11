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
    print("DictionaryTest \(numberForName5["JoonHo"])")
    print("DictionaryTest \(numberForName5["Test"])")
    
    numberForName5["Age"] = 27
    print("DictionaryTest \(numberForName5["Age"])")
    
    numberForName5.removeValue(forKey: "Age")  //삭제
    print("DictionaryTest \(numberForName5["Age", default: 0])")   //값이 없으면 기본으로 0 반환
    
    
}


//세트는 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 형태의 컬렉션 타입입니다
//중복된 값이 존재하지 않는다, 순서가 중요하지 각 요소의 유일한 값이어야 하는 경우에 사용
func SetTest1() {
    var names1: Set<String> = Set<String>()
    var names2: Set<String> = []
    var names3: Set<String> = ["Choi", "Joon", "Ho", "Choi", "Joon"]
    print("SetTest.name3 \(names3.isEmpty)")
    print("SetTest.name3 \(names3.count)")   //중복된 값은 허용되지 않음
    names3.insert("Swift")
    names3.remove("Ho")
    
    var numbers = [100, 200, 300]   //타입 추론을 사용하게 되면 컴파일러는 Set이 아닌 Array로 타입을 지정
    print("SetTest \(type(of: numbers))")
    
}

func SetTest2() {
    let JapanClass: Set<String> = ["mina", "sana", "momo","Swift", "Xcode"]
    let KoreaClass: Set<String> = ["Choi", "Joon", "Ho", "Swift", "Xcode"]
    
    //교집합
    let intersectSet: Set<String> = JapanClass.intersection(KoreaClass)
    
    //여집합의 합, 중복된 항목 제거
    let symmtricDiffSet: Set<String> = JapanClass.symmetricDifference(KoreaClass)
    
    //합집합
    let UnionSet: Set<String> = JapanClass.union(KoreaClass)
    
    //차집합
    let subtractSet: Set<String> = JapanClass.subtracting(KoreaClass)
    
    print("SetTest2 \(UnionSet.sorted())")
    print("SetTest2.isDisjoint \(JapanClass.isDisjoint(with: KoreaClass))")   //서로 배타적인지
    print("SetTest2.isSubset \(JapanClass.isSubset(of: KoreaClass))")  //일본이 한국의 부분집합인지
    print("SetTest2.isSuperset \(JapanClass.isSuperset(of: KoreaClass))")
}


//열거형은 연관된 항목들을 묶어서 표현할 수 있는 타입 추가 수정이 불가
func EnumTest1() {
    enum School1 {
        case primary, elementary, middle, high, college, university, graduate
    }
    var highestEducationLevel1: School1 = School1.university
    var highestEducationLevel2: School1 = .university
    highestEducationLevel2 = .graduate
    
    enum School2: String {
        case primary = "유치원"
        case elementary = "초등학교"
        case middle = "중학교"
        case hige = "고등학교"
        case college = "대학"
        case university = "대학교"
        case gradute = "대학원"
    }
    var highestEducationLevel3: School2 = School2.university
    print(highestEducationLevel3.rawValue)
    
    enum WeekDays: Character {
        case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
    }
    
    let today: WeekDays = WeekDays.fri
    print(today.rawValue)
}


func EnumTest2() {
    //열거형의 원시 값 일부 지정 및 자동 처리
    enum School1: String {
        case primary = "유치원"
        case elementary = "초등학교"
        case middle = "중학교"
        case hige = "고등학교"
        case college
        case university
        case gradute
    }
    let highestEducationLevel1: School1 = School1.gradute
    print(highestEducationLevel1.rawValue)
    
    enum Numbers: Int {
        case zero
        case one
        case two
        case ten = 10
    }
    let one = Numbers(rawValue: 1)
    print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.ten.rawValue)")
    
    //연관 값을 갖는 열거형
    enum MainDish {
        case pasta(taste: String)
        case pizza(dough: String, topping: String)
        case chicken(withSauce: Bool)
        case rice
    }
    var dinner: MainDish = MainDish.pasta(taste: "cream")
    
    
}


