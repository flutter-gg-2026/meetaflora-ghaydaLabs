import 'package:equatable/equatable.dart';

/// Base failure class
abstract class Failure extends Equatable {
  final String message;

  const Failure([this.message = 'Something went wrong']);

  @override
  List<Object?> get props => [message];
}

// ──────────────────────────────────────────────────────────────
// Network
// ──────────────────────────────────────────────────────────────

class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error']);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No internet connection']);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure([super.message = 'Connection timeout']);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Not found']);
}

class TooManyRequestsFailure extends Failure {
  const TooManyRequestsFailure([super.message = 'Too many requests']);
}

// ──────────────────────────────────────────────────────────────
// Auth
// ──────────────────────────────────────────────────────────────

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure([super.message = 'Unauthorized']);
}

// ──────────────────────────────────────────────────────────────
// Data
// ──────────────────────────────────────────────────────────────

class ValidationFailure extends Failure {
  const ValidationFailure([super.message = 'Validation failed']);
}

// ──────────────────────────────────────────────────────────────
// Device
// ──────────────────────────────────────────────────────────────

class PermissionFailure extends Failure {
  const PermissionFailure([super.message = 'Permission denied']);
}

class CameraFailure extends Failure {
  const CameraFailure([super.message = 'Camera error']);
}

// ──────────────────────────────────────────────────────────────
// Generic
// ──────────────────────────────────────────────────────────────

class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Unknown error']);
}

class CancelledFailure extends Failure {
  const CancelledFailure([super.message = 'Cancelled']);
}
