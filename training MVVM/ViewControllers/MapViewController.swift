//
//  MapViewController.swift
//  training MVVM
//
//  Created by Богдан Баринов on 28.10.2022.
//

import UIKit
import MapKit
import CoreLocation


class MapViewController: UIViewController {
    
    var area: Area
    let titleLabel = UILabel()
    let mapView = MKMapView(frame: CGRect(x: 0, y: 116, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 116))
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 1000

    
    init(area: Area) {
        self.area = area
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        titleLabel.text = area.name
        titleLabel.frame = CGRect(x: 0, y: 50, width: 300, height: 50)
        titleLabel.textColor = .black
        titleLabel.center.x = view.center.x
        titleLabel.font = .systemFont(ofSize: 30)
        
        view.addSubview(mapView)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.global().async {
            self.checkLocationServices()
        }
        
//        locationManager = CLLocationManager()

//        locationManager.delegate = self
//
//        locationManager.requestWhenInUseAuthorization()
//
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//
//        locationManager.startUpdatingLocation()
//
//        locationManager.startMonitoringSignificantLocationChanges()
    }
    
    func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }

    func centerViewOnUserLocation() {
//        if let location = locationManager.location?.coordinate {
            print("privet4")
            let region = MKCoordinateRegion.init(center: CLLocationCoordinate2D(latitude: 55.711473, longitude: 37.544458), latitudinalMeters: 2000, longitudinalMeters: 2000)
//            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            print("privet5")

            mapView.setRegion(region, animated: true)
            print("privet6")

//        }
    }
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            print("privet1")
            setupLocationManager()
            checkLocationAuthorrization()
        } else {
            print("privet2")
            // Show alert letting the user know they have to turn this on.
        }
    }


    func checkLocationAuthorrization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            print("privet 3")
            mapView.showsUserLocation = true
            centerViewOnUserLocation()
            locationManager.startUpdatingLocation()
            break
        case .denied:
            // Show alret instructing them how to turn on permissions
            break
        case .notDetermined:
            break
        case .restricted:
            // Show alret letting them know what's up
            break
        case .authorizedAlways:
            break
        @unknown default:
            print("unknow error")
        }
    }

}

extension MapViewController: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
        mapView.setRegion(region, animated: true)
    }


    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuthorrization()
    }
}




//// Here you can check whether you have allowed the permission or not.
//
//if CLLocationManager.locationServicesEnabled()
//    {
//        switch(CLLocationManager.authorizationStatus())
//        {
//
//        case .authorizedAlways, .authorizedWhenInUse:
//
//            print("Authorize.")
//
//            break
//
//        case .notDetermined:
//
//            print("Not determined.")
//
//            break
//
//        case .restricted:
//
//            print("Restricted.")
//
//            break
//
//        case .denied:
//
//            print("Denied.")
//        }
//    }
