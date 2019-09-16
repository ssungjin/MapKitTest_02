//
//  ViewController.swift
//  MapKitTest02
//
//  Created by D7703_04 on 2019. 9. 16..
//  Copyright © 2019년 Y. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        //MapType 설정
        mapView.mapType = MKMapType.satellite
        //mapView.mapType = MKMapType.hybrid
        //mapView.mapType = MKMapType.standard
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // DIT 위도, 경도 설정. 35.165841 , 129.071484
        let location = CLLocationCoordinate2D(latitude:35.165841 , longitude:129.071484)
        // 반경 설정
        let span = MKCoordinateSpan(latitudeDelta: 300, longitudeDelta: 300)
    
        // region 설정
        let region = MKCoordinateRegion(center: location, latitudinalMeters: span.latitudeDelta, longitudinalMeters: span.longitudeDelta)
       
        // mapview에 실행
        mapView.setRegion(region, animated: true)
        
        // pin 꼽기
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "동의과학대학교"
        annotation.subtitle = "We are DIT"
        mapView.addAnnotation(annotation)
        
}

    @IBAction func standardMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.standard
    }
    
    @IBAction func satelliteMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.satellite
    }
    @IBAction func hybirdMapTypeAction(_ sender: Any) {
        mapView.mapType = MKMapType.hybrid
    }
}
