


  import 'package:quality_quest/data/network_service.dart';
import 'package:quality_quest/domain/repository/repository.dart';

late final Repository repository;

Future<void> serviceLocator() async {


  repository = RepositoryImplementation(
    network: HttpService(),
  );

}
