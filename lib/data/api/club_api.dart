import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'club_api.g.dart';

@RestApi()
abstract class ClubApi {
  factory ClubApi(Dio dio) = _ClubApi;
}
