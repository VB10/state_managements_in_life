import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../feature/maps/model/map_model.dart';

extension MapMarkersExtension on List<MapModel> {
  Set<Marker> toMarkers(int selectedIndex) {
    return Set.of(map((e) => Marker(
        icon: BitmapDescriptor.defaultMarkerWithHue(
            this[selectedIndex] == e ? BitmapDescriptor.hueGreen : BitmapDescriptor.hueAzure),
        markerId: MarkerId('${e.lat}'),
        position: e.latlong)));
  }
}
