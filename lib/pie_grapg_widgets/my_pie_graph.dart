import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/core/providers/dashboard_provider.dart';

import 'indicator.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    // Provider.of<DashBoardProvider>(context,listen: false).getPresentStudentProvider();
    // Provider.of<DashBoardProvider>(context,listen: false).getAbsentStudentProvider();
    // Provider.of<DashBoardProvider>(context,listen: false).getLeaveStudentProvider();
    return Consumer<DashBoardProvider>(
      builder: (BuildContext context, dashBoardProvider, Widget? child) {
        return AspectRatio(
          aspectRatio: 1.3,
          child: Row(
            children: <Widget>[
              const SizedBox(
                height: 18,
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    PieChartData(
                      pieTouchData: PieTouchData(
                        touchCallback: (FlTouchEvent event, pieTouchResponse) {
                          setState(() {
                            if (!event.isInterestedForInteractions ||
                                pieTouchResponse == null ||
                                pieTouchResponse.touchedSection == null) {
                              touchedIndex = -1;
                              return;
                            }
                            touchedIndex = pieTouchResponse
                                .touchedSection!.touchedSectionIndex;
                          });
                        },
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      sectionsSpace: 0,
                      // centerSpaceRadius: 80,
                      sections: showingSections(
                        double.parse(dashBoardProvider.getPresentStudent.length
                            .toString()),
                        double.parse(dashBoardProvider.getAbsentStudent.length
                            .toString()),
                        double.parse(dashBoardProvider.getLeaveStudent.length
                            .toString()),
                       int.parse(dashBoardProvider.getPresentStudent.length.toString()),
                       int.parse(dashBoardProvider.getAbsentStudent.length.toString()),
                       int.parse(dashBoardProvider.getLeaveStudent.length.toString()),

                      ),
                    ),
                  ),
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Indicator(
                    color: Colors.green,
                    text: 'Present',
                    isSquare: true,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Indicator(
                    color: Colors.red,
                    text: 'Absent',
                    isSquare: true,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Indicator(
                    color: Colors.yellow,
                    text: 'Leave',
                    isSquare: true,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
              const SizedBox(
                width: 28,
              ),
            ],
          ),
        );
      },
    );
  }

  List<PieChartSectionData> showingSections(
    double presentValue,
    double absentValue,
    double leaveValue,
      int presentValueTitle,
      int absentValueTitle,
      int leaveValueTitle,
  ) {
    return List.generate(3, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 140.0 : 110.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: Colors.green,
            value: presentValue,
            title: presentValueTitle.toString(),
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Colors.red,
            value: absentValue,
            title: absentValueTitle.toString(),
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Colors.yellow,
            value: leaveValue,
            title: leaveValueTitle.toString(),
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        case 4:
          return PieChartSectionData(
            color: Colors.yellow,
            value: leaveValue,
            title: 'Leave',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}
