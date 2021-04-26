import UIKit
import MapKit

class SecondMapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!

    // 国土地理院が提供する色別標高図のURL
    // ここを変えるだけで、様々な地図データを表示できる！
    private let tileOverlay = MKTileOverlay(urlTemplate: "https://cyberjapandata.gsi.go.jp/xyz/relief/{z}/{x}/{y}.png")

    override func viewDidLoad() {
        super.viewDidLoad()

        let location:CLLocationCoordinate2D
            = CLLocationCoordinate2DMake(33.4535094,129.9781606)
        
        mapView.delegate = self
        mapView.addOverlay(tileOverlay, level: .aboveLabels)
        
        var region:MKCoordinateRegion = mapView.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        
        mapView.setRegion(region,animated:true)
    }
}

//extension SecondMapViewController: MKMapViewDelegate {
//    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
//        return MKTileOverlayRenderer(overlay: overlay)
//    }
//}
