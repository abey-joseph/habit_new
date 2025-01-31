import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit/core/bloc/detail_bloc/detail_bloc.dart';
import 'package:habit/data/constant/habit_status_list_and_operations/habit_status_list_and_operations.dart';
import 'package:habit/data/model/date_status_model.dart';
import 'package:habit/data/model/habit_model.dart';

class DetailScreen extends StatelessWidget {
  final int index;
  const DetailScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        //
        //
        //

        if (state is loadedHabitDetail) {
          Habit habit = state.habit;

          return Scaffold(
              appBar: AppBar(
                title: Text(habit.habit),
              ),
              body: SingleChildScrollView(
                child: Column(
                  spacing: 20,
                  children: [
                    lineChart(state.listForProgressLineChart),
                    dateChart(state.habit.dateStatus)
                  ],
                ),
              ));
//

          //
        } else if (state is errorHabitDetail) {
          return Scaffold(body: Center(child: Text(state.e)));
        } else if (state is loadingHabitDetail) {
          return Scaffold(
              body: Center(child: CircularProgressIndicator.adaptive()));
        } else {
          return Scaffold(body: Center(child: Text('Initializing...')));
        }
      },
    );
  }

  Container dateChart(List<DateStatus> dateStatusList) {
    DateTime firstDay = dateStatusList[0].date;
    DateTime lastDay = dateStatusList[dateStatusList.length - 1].date;

    List<DateStatus> filledDateStatusList =
        fillDummydataInFrontForDateChart(dateStatusList);

    DateTime filledFirstDay = filledDateStatusList[0].date;
    DateTime filledLastDay =
        filledDateStatusList[filledDateStatusList.length - 1].date;

    filledFirstDay =
        DateTime(filledFirstDay.year, filledFirstDay.month, filledFirstDay.day);
    filledLastDay =
        DateTime(filledLastDay.year, filledLastDay.month, filledLastDay.day);

    int totalDays = (filledLastDay.difference(filledFirstDay)).inDays + 1;

    int rowCount = (totalDays / 7).toInt();

    List<String> daysList = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

    ScrollController scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });

    return Container(
        padding: EdgeInsets.only(top: 18, bottom: 18, right: 18),
        color: Colors.transparent,
        height: 250,
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 15,
          children: [
            Flexible(
              child: SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(rowCount, (rowIndex) {
                    return Column(
                      children: List.generate(7, (columnIndex) {
                        int index = (rowIndex * 7) + columnIndex;
                        DateTime day = filledDateStatusList[index].date;

                        return Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(5, 5)),
                              color: ((day.isAfter(firstDay) ||
                                          day.isAtSameMomentAs(firstDay)) &&
                                      (day.isBefore(lastDay) ||
                                          day.isAtSameMomentAs(lastDay)))
                                  ? (filledDateStatusList[index].isCompleted)
                                      ? Colors.blue
                                      : Colors.grey[400]
                                  : Colors.transparent,
                            ),
                            child: Center(
                                child: ((day.isAfter(firstDay) ||
                                            day.isAtSameMomentAs(firstDay)) &&
                                        (day.isBefore(lastDay) ||
                                            day.isAtSameMomentAs(lastDay)))
                                    ? Text(day.day.toString())
                                    : Text("")),
                          ),
                        );
                      }),
                    );
                  }),
                ),
              ),
            ),
            Column(
              children: List.generate(daysList.length, (dayNo) {
                return Container(
                    padding: EdgeInsets.all(01),
                    height: 27,
                    child: Center(child: Text(daysList[dayNo])));
              }),
            )
          ],
        ));
  }

  Container lineChart(List<int> progressList) {
    return Container(
      color: Colors.transparent,
      height: 250,
      width: double.maxFinite,
      child: LineChart(
        LineChartData(
            //backgroundColor: Colors.amber,
            maxX: progressList.length.toDouble(),
            maxY: 100,
            lineBarsData: [
              LineChartBarData(
                spots: List.generate(progressList.length, (index) {
                  return FlSpot(
                      index.toDouble(), progressList[index].toDouble());
                }),
                //color: Colors.blue,
              )
            ]),
      ),
    );
  }
}
