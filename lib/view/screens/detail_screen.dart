import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit/core/bloc/detail_bloc/detail_bloc.dart';
import 'package:habit/data/model/habit_model.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  const DetailScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        if (state is loadingHabitDetail) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        } else if (state is errorHabitDetail) {
          return Scaffold(body: Center(child: Text(state.e)));
        } else if (state is loadedHabitDetail) {
          Habit habit = state.habit;
          return Scaffold(
            appBar: AppBar(
              title: Text(habit.habit),
            ),
            body: Center(
              child: Text('data'),
            ),
          );
        } else {
          return Scaffold(body: Center(child: Text('Initializing...')));
        }
      },
    );
  }
}
