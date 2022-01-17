import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../product/init/network/network_product.dart';
import '../../../product/utility/extension/map_model_markers.dart';
import '../service/map_service.dart';
import '../viewmodel/map_view_model.dart';

// 5 datam var bunlarin ilki direk secili gelsin 12 zoomla
// markerlere

// cad hareket ettikce mapi gunccele
class MapSelectView extends StatefulWidget {
  const MapSelectView({Key? key}) : super(key: key);

  @override
  State<MapSelectView> createState() => _MapSelectViewState();
}

class _MapSelectViewState extends State<MapSelectView> {
  late final MapViewModel _mapViewModel;
  final double _cardSize = 200;

  GoogleMapController? _controller;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _mapViewModel = MapViewModel(MapService(NetworkProduct.instance.networkManager));
    _mapViewModel.fetchAllMaps();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _googleMaps(),
          Positioned(right: 0, left: 0, height: _cardSize, bottom: kToolbarHeight, child: _pageViewAnimals())
        ],
      ),
    );
  }

  Widget _pageViewAnimals() {
    return Observer(builder: (_) {
      return PageView.builder(
        itemCount: _mapViewModel.mapModelItems.length,
        controller: PageController(viewportFraction: 0.8),
        onPageChanged: (value) {
          _mapViewModel.changeIndex(value);
          _controller?.animateCamera(CameraUpdate.newLatLng(_mapViewModel.mapModelItems[value].latlong));
        },
        itemBuilder: (context, index) {
          return Card(
            child: Image.network(_mapViewModel.mapModelItems[index].detail?.photoUrl ?? ''),
          );
        },
      );
    });
  }

  Observer _googleMaps() {
    return Observer(builder: (_) {
      return _mapViewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : GoogleMap(
              onMapCreated: (controller) {
                _controller = controller;
              },
              markers: _mapViewModel.mapModelItems.toMarkers(_mapViewModel.selectedIndex),
              initialCameraPosition: CameraPosition(target: _mapViewModel.mapModelItems.first.latlong, zoom: 12));
    });
  }
}
