part of 'guest_home_cubit.dart';

class GuestHomeState extends Equatable {
  const GuestHomeState({
    this.status = Status.initial,
    this.data = const GuestHome(),
    this.errorMessage = '',
  });

  final Status status;
  final GuestHome data;
  final String errorMessage;

  GuestHomeState copyWith({
    Status? status,
    GuestHome? data,
    String? errorMessage,
  }) => GuestHomeState(
    status: status ?? this.status,
    data: data ?? this.data,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object?> get props => [status, data, errorMessage];
}
