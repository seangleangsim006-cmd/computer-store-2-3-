part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavEvent {}
class SelectedBottomNav extends BottomNavEvent{
   int index;
   SelectedBottomNav({required this.index});
}
