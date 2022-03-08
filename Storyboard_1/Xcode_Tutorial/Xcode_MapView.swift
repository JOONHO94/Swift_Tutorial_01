//
//  ViewController.swift
//  Stroyboard_6
//
//  Created by 최준호 on 2022/01/13.
//

import UIKit
import MapKit

class Xcode_MapView: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var myMap: MKMapView!
    @IBOutlet weak var IbILocationInfo1: UILabel!
    @IBOutlet weak var IbILocationInfo2: UILabel!
    
    let locationManager = CLLocationManager()
    
    var myNumberSet : Set<Int> = Set<Int>()
    var myFriends : Set<String> = ["test", "test2", "test3"]
   // var myFriends1 : [String] =
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        IbILocationInfo1.text = ""
        IbILocationInfo2.text = ""
        locationManager.delegate = self   //delegate를 self로 설정
        locationManager.desiredAccuracy = kCLLocationAccuracyBest   //정화도를 최고로 설정
        locationManager.requestWhenInUseAuthorization()   //위치데이터를 추적하기 위해 사용자에게 승인을 요청
        locationManager.startUpdatingLocation()   //위치 업데이트를 시작합니다
        myMap.showsUserLocation = true   //위치보기값을 true로 설정
        
    }

    @IBAction func sgChangeLocation(_ sender: Any) {
    }
    
}


