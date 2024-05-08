import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'candidate_api.g.dart';

@RestApi()
abstract class CandidateApi {
  factory CandidateApi(Dio dio) = _CandidateApi;
}
