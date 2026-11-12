part of 'points_cubit.dart';

class PointsState extends Equatable {
  const PointsState({
    this.status = Status.initial,
    this.summary = const PointsSummary(),
    this.history = const [],
    this.errorMessage = '',
    this.page = 1,
    this.totalPage = 1,
    this.loadingMore = false,
  });

  final Status status;
  final PointsSummary summary;

  /// Every history page loaded so far.
  final List<PointEntry> history;
  final String errorMessage;

  /// Last history page loaded and the server's page count.
  final int page;
  final int totalPage;

  /// The next page is being fetched.
  final bool loadingMore;

  bool get hasMore => page < totalPage;

  PointsState copyWith({
    Status? status,
    PointsSummary? summary,
    List<PointEntry>? history,
    String? errorMessage,
    int? page,
    int? totalPage,
    bool? loadingMore,
  }) => PointsState(
    status: status ?? this.status,
    summary: summary ?? this.summary,
    history: history ?? this.history,
    errorMessage: errorMessage ?? this.errorMessage,
    page: page ?? this.page,
    totalPage: totalPage ?? this.totalPage,
    loadingMore: loadingMore ?? this.loadingMore,
  );

  @override
  List<Object?> get props => [
    status,
    summary,
    history,
    errorMessage,
    page,
    totalPage,
    loadingMore,
  ];
}
