
import 'package:quality_quest/data/network_service.dart';
abstract class Repository {

}

class RepositoryImplementation implements Repository {
  final Network network;

 const RepositoryImplementation({required this.network});



}