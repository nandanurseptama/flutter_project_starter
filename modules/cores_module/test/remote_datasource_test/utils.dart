import 'package:dio/dio.dart';

Response createDioResponse({
  required String path,
  data,
}) {
  return Response(requestOptions: RequestOptions(path: path), data: data);
}
