import 'package:dio/dio.dart';

import 'failure.dart';

class FailureExceptions {
  static Failure getException(Object error) {
    return switch (error) {
      DioException e => _handleDio(e),
      _ => UnknownFailure(error.toString()),
    };
  }

  // ══════════════════════════════════════════════════════════════
  // DIO EXCEPTIONS
  // ══════════════════════════════════════════════════════════════

  static Failure _handleDio(DioException error) {
    return switch (error.type) {
      DioExceptionType.connectionTimeout => const TimeoutFailure(
        'Connection timeout',
      ),
      DioExceptionType.sendTimeout => const TimeoutFailure('Send timeout'),
      DioExceptionType.receiveTimeout => const TimeoutFailure(
        'Receive timeout',
      ),
      DioExceptionType.connectionError => const NetworkFailure(),
      DioExceptionType.cancel => const CancelledFailure(),
      DioExceptionType.badResponse => _handleStatusCode(
        error.response?.statusCode,
      ),
      _ => const UnknownFailure('Network error'),
    };
  }

  static Failure _handleStatusCode(int? code) {
    return switch (code) {
      400 => const ValidationFailure('Bad request'),
      401 => const UnauthorizedFailure(),
      403 => const UnauthorizedFailure('Access denied'),
      404 => const NotFoundFailure(),
      429 => const TooManyRequestsFailure(),
      500 => const ServerFailure(),
      502 => const ServerFailure('Bad gateway'),
      503 => const ServerFailure('Service unavailable'),
      _ => ServerFailure('Server error: $code'),
    };
  }
}
