class TravelModel {
  final String title;
  final String subTitle;
  final String imageName;

  TravelModel({required this.title, required this.subTitle, required this.imageName});

  String get imagePath => 'asset/images/feed/$imageName.png';

  static final List<TravelModel> mockItmes = [
    TravelModel(title: 'Sopporo', subTitle: 'Sopporo Tower', imageName: 'discover'),
    TravelModel(title: 'Osaka', subTitle: 'Japan', imageName: 'dest'),
    TravelModel(title: 'Costentino', subTitle: 'Cosentinonoto', imageName: 'cosentino'),
  ];
}
