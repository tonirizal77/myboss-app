part of 'store_branches_bloc.dart';

@freezed
abstract class StoreBranchesState with _$StoreBranchesState {
  const factory StoreBranchesState({
    @Default(StoreBranchesModel()) StoreBranchesModel branches,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadMore,
    @Default("") String error,
  }) = _StoreBranchesState;
}
