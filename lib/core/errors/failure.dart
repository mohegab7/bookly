import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection Timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Timeout with Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad Certificate with Api Server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request Api Server Canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('connection Error with Api Server');
      case DioExceptionType.unknown:
        return ServerFailure('Opps ,try again');
    }
  }
  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 404) {
      return ServerFailure('Your request was not found , please try later');
    } else if (statuscode == 500) {
      return ServerFailure('there is problem with server , please try later');
    } else if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('please try again');
    }
  }
}
