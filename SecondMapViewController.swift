import UIKit
import MapKit

class SecondMapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlTeplate = "https://cyberjapandata.gsi.go.jp/xyz/ort_old10/{z}/{x}/{y}.png"
        let overlay = MKTileOverlay(urlTemplate: urlTeplate)
        overlay.canReplaceMapContent = true
        
        mapView.delegate = self
        mapView.addOverlay(overlay, level: .aboveLabels)
        
        let location:CLLocationCoordinate2D
            = CLLocationCoordinate2DMake(33.4535094,129.9781606)
 
        mapView.setCenter(location,animated:true)
        
        var region:MKCoordinateRegion = mapView.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
 
        mapView.setRegion(region,animated:true)
 
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKTileOverlay {
            let renderer = MKTileOverlayRenderer(overlay: overlay)
            return renderer
        } else {
            return MKTileOverlayRenderer()
        }
    }
}

