import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'utils/map_style.dart';

class HomeController {
  void onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(mapSyle);
    controller.showMarkerInfoWindow(MarkerId("1"));
  }
}
