import 'package:state_managements_in_life/feature/maps/model/map_model.dart';
import 'package:vexana/vexana.dart';

abstract class IMapService {
  final INetworkManager networkManager;

  IMapService(this.networkManager);

  Future<List<MapModel>?> fetchMapItesm();
}

class MapService extends IMapService {
  MapService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<List<MapModel>?> fetchMapItesm() async {
    final response = await networkManager.send<MapModel, List<MapModel>>(_MapEndPoint.maps.withJson,
        parseModel: MapModel(), method: RequestType.GET);

    return response.data;
  }
}

enum _MapEndPoint { maps }

extension _MapEndPointExtension on _MapEndPoint {
  String get withJson => '$name.json';
}
