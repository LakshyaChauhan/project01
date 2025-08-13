import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/features/home/domain/usecases/fetch_home_data.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final FetchHomeData _fetchHomeData;
  HomeBloc({required FetchHomeData fetchHomedata})
    : _fetchHomeData = fetchHomedata,
      super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      emit(HomeLoading());
      final response = await _fetchHomeData.call(null);
      response.fold(
        (l) => emit(HomeError(errorMessage: l.message)),
        (r) => emit(HomeLoaded(success: "Data fetched successfully")),
      );
    });
  }
}
