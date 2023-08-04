import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AttendanceResult extends StatefulWidget {


   const AttendanceResult({super.key});

  @override
  State<AttendanceResult> createState() => _AttendanceResultState();
}

class _AttendanceResultState extends State<AttendanceResult> {
  List<String> employees = [
    "John Doe",
    "Jane Smith",
    // Add more employee names as needed
  ];

  List<String> attendanceStatuses = ["Present", "Absent", "Leave", "Off"];

  List<List<String>> attendanceData = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('One-Month Attendance Sheet'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Date"),
                for (String employee in employees) Text(employee),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 30, // Assuming a month with 30 days
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Day ${index + 1}"),
                      for (String employee in employees)
                        DropdownButton<String>(
                          value: getAttendanceStatus(index, employee),
                          onChanged: (String? newValue) {
                            setState(() {
                              setAttendanceStatus(index, employee, newValue!);
                            });
                          },
                          items: attendanceStatuses
                              .map<DropdownMenuItem<String>>(
                                (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            ),
                          )
                              .toList(),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

   String getAttendanceStatus(int day, String employee) {
     for (var data in attendanceData) {
       if (data[0] == "Day ${day + 1}" && data[1] == employee) {
         return data[2];
       }
     }
     return attendanceStatuses[0]; // Default: "Present"
   }

   void setAttendanceStatus(int day, String employee, String status) {
     bool updated = false;
     for (var data in attendanceData) {
       if (data[0] == "Day ${day + 1}" && data[1] == employee) {
         data[2] = status;
         updated = true;
         break;
       }
     }
     if (!updated) {
       attendanceData.add(["Day ${day + 1}", employee, status]);
     }
   }
}



