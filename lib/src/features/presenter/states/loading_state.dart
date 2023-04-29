// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class LoadingState {}

class PendingLoadingState implements LoadingState {}

class SuccessLoadingState implements LoadingState {}

class FailedLoadingState implements LoadingState {
  final String message;

  FailedLoadingState({
    required this.message,
  });
}
