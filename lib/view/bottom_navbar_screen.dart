import 'package:computer_app/bloc/bottom_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavbarScreen extends StatelessWidget {
  const BottomNavbarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text("Bottm Nav")),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.index,
            onTap: (value) {
              context.read<BottomNavBloc>().add(SelectedBottomNav(index: value));
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue[900],
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notification",
              ),
            ],
          ),
        );
      },
    );
  }
}
