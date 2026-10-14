part of 'points_cubit.dart';

class PointsState extends Equatable {
  const PointsState({
    this.status = Status.initial,
    this.summary = const PointsSummary(),
    this.history = const [],
    this.errorMessage = '',
  });

  final Status status;
  final PointsSummary summary;
  final List<PointEntry> history;
  final String errorMessage;

  PointsState copyWith({
    Status? status,
    PointsSummary? summary,
    List<PointEntry>? history,
    String? errorMessage,
  }) => PointsState(
    status: status ?? this.status,
    summary: summary ?? this.summary,
    history: history ?? this.history,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object?> get props => [status, summary, history, errorMessage];
}
