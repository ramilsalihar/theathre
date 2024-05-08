import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'admin_api.g.dart';

@RestApi()
abstract class AdminApi {
  factory AdminApi(Dio dio) = _AdminApi;
}
