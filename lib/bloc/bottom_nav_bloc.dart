import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavState(index: 0)) {
    // on<BottomNavEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
    on<SelectedBottomNav>((event, emit) {
       emit(BottomNavState(index: event.index));
    },);
  }
}
