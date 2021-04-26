import UIKit
 
// MapKit framework をimport
import MapKit
 
// MKMapViewDelegate の追加
class FirstMapViewController: UIViewController, MKMapViewDelegate {
 
    // storyboardにMapViewを置き、それと接続する
    @IBOutlet var mapView:MKMapView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        //唐津城 緯度経度: 33.4535094, 129.9781606
        
        // 緯度・軽度を設定
        let location:CLLocationCoordinate2D
            = CLLocationCoordinate2DMake(33.4535094,129.9781606)
 
        mapView.setCenter(location,animated:true)
 
        // 縮尺を設定
        var region:MKCoordinateRegion = mapView.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
 
        mapView.setRegion(region,animated:true)
 
        // 表示タイプを航空写真と地図のハイブリッドに設定
        mapView.mapType = MKMapType.hybrid
        // mapView.mapType = MKMapType.standard
        // mapView.mapType = MKMapType.satellite
    }
 
}
