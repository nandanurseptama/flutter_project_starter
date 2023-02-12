import 'package:cores_module/remote_datasource/dio_remote_datasource.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../mocks/dio_mock.dart';
import 'utils.dart';

void main() {
  final DioMock dioMock = DioMock();
  final DioRemoteDatasource dioRemoteDatasource =
      DioRemoteDatasource(dio: dioMock);

  var getSingleCommentUrl = "https://dummyjson.com/comments/1";

  var getSingleCommentJson = {
    "id": 1,
    "body": "This is some awesome thinking!",
    "postId": 100,
    "user": {"id": 63, "username": "eburras1q"}
  };

  group("Dio remote datasource test", () {
    group("Get method test", () {
      test("When sending get request, should call dio get method", () async {
        when(() => dioMock.get(
                  getSingleCommentUrl,
                ))
            .thenAnswer((_) async => createDioResponse(
                path: getSingleCommentUrl, data: getSingleCommentJson));

        await dioRemoteDatasource.get(url: getSingleCommentUrl);

        verify(() => dioMock.get(getSingleCommentUrl)).called(1);
      });
      test("When sending get request success, should return expected response",
          () async {
        when(() => dioMock.get(
                  getSingleCommentUrl,
                ))
            .thenAnswer((_) async => createDioResponse(
                path: getSingleCommentUrl, data: getSingleCommentJson));
        var response = await dioRemoteDatasource.get(url: getSingleCommentUrl);
        expect(
            response.data,
            createDioResponse(
                    path: getSingleCommentUrl, data: getSingleCommentJson)
                .data);
      });
    });
  });
}
