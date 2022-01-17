import 'package:flutter_test/flutter_test.dart';
import 'package:state_managements_in_life/feature/maps/model/map_model.dart';
import 'package:state_managements_in_life/feature/maps/service/map_service.dart';
import 'package:vexana/vexana.dart';
import 'package:state_managements_in_life/feature/maps/model/map_model.dart';

void main() {
  late INetworkManager networkManager;
  late IMapService mapService;
  setUp(() {
    networkManager = NetworkManager(options: BaseOptions(baseUrl: 'https://fluttertr-ead5c.firebaseio.com/'));
    mapService = MapService(networkManager);
  });
  test('Fetch all map datas', () async {
    final response = await mapService.fetchMapItesm();

    expect(response, isNotNull);
  });
}
