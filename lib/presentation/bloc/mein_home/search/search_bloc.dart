import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/core/service_locator.dart';
import 'package:quality_quest/domain/model/screens/search_model/search_screen_model.dart';
import 'package:quality_quest/domain/repository/repository.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial()) {
    on<SearchScienceEvent>(_searchScience);
  }

  void _searchScience(SearchScienceEvent event, Emitter emit) async {
    emit(SearchLoading());

    final response = await (repository as RepositoryImplementation).network.methodSearchScience(api: Api.getSearchScience, data: event.title);
    if (response.isNotEmpty) {
      emit(SearchSuccess(data: response));
    } else {
      emit(SearchFailure());
    }
  }
}
