part of '../store_list_bloc.dart';

/// Extension on [StoresListBloc] to handle OTP requests.
extension _CounterHandler on StoresListBloc {
  /// Event Handler for Fetch List Store
  void _onCount(StoresListEvent event, Emitter<StoresListState> emit) {
    //// !Berdasarkan State
    ///
    // emit(
    //   state.maybeWhen(
    //     orElse: () => state,
    //     initial: () => StoresListState.running(0),
    //     loading: () => state,
    //     running: (count) {
    //       return event.maybeWhen(
    //         orElse: () => state,
    //         increment: () => StoresListState.running(count + 1),
    //         decrement: () => StoresListState.running(count - 1),
    //       );
    //     },
    //   ),
    // );

    //// !Berdasarkan Event
    ///
    // event.maybeWhen(
    //   increment: () => increment(emit),
    //   decrement: () => decrement(emit),
    //   orElse: () => state,
    // );
  }

  // increment<TResult>(Emitter<StoresListState> emit) {
  //   emit(
  //     state.maybeWhen(
  //       initial: () => StoresListState.running(0),
  //       running: (counter) => StoresListState.running(counter + 1),
  //       orElse: () => state,
  //     ),
  //   );
  // }

  // decrement<TResult>(Emitter<StoresListState> emit) {
  //   emit(
  //     state.maybeWhen(
  //       initial: () => StoresListState.running(0),
  //       running: (counter) => StoresListState.running(counter - 1),
  //       orElse: () => state,
  //     ),
  //   );
  // }
}
