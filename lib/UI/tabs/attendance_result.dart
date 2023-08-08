import 'package:flutter/material.dart';
import 'package:school_manegment_system/UI/tabs/attendance_sheet.dart';
import 'package:school_manegment_system/UI/widgets/custom_button.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';



class AttendanceResult extends StatelessWidget {
  const AttendanceResult({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    double h = size.height/100;
    double w = size.width/100;

    return  Scaffold(
      drawer:  Drawer(
        width: 20*w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 5*h,
              width: 40 *w,
              color: Colors.red,
            ),
            Container(
              height: 5*h,
              width: 45 *w,
              color: Colors.blueGrey,
            ),
            DeleteButton(text: 'sikjjkkjkj', onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return AttendanceSheet();
              }));
            }),
            Container(
              height: 5*h,
              width: 50 *w,
              color: Colors.greenAccent,
            ),
            Container(
              height: 5*h,
              width: 50 *w,
              color: Colors.greenAccent,
            ),

          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('jhhjg'),

      ),
      body: SizedBox(
        height: 100*h,
        width: 100*w,
        child: Column(
          children: [
            Container(
              height: 40*h,
              width: 100*w,
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                height: 35*h,
                width: 30*w,
                color: Colors.white),
                Container(
                height: 35*h,
                width: 30*w,
                color: Colors.greenAccent),
                Container(
                height: 35*h,
                width: 30*w,
                color: Colors.black54),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}





// class DatePicker extends StatefulWidget {
//   late  String informationDate;
//     DatePicker({super.key, required this.informationDate});
//
//   @override
//   State<DatePicker> createState() => _DatePickerState();
// }
//
// class _DatePickerState extends State<DatePicker> {
//    DateTime _selectedDate = DateTime.now();
//
//    void getSelectDate(BuildContext context) async {
//      DateTime? picked = await showDatePicker(
//        context: context,
//        initialDate: _selectedDate,
//        firstDate: DateTime(1950),
//        lastDate: DateTime(2030),
//      );
//
//      if (picked != null && picked != _selectedDate) {
//        setState(() {
//          _selectedDate = picked;
//          widget.informationDate = ('${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}');
//
//        });
//      }
//    }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: InkWell(
//           onTap: (){
//             getSelectDate(context);
//           },
//           child: Container(
//             height: 50,
//             width: 500,
//             decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(20)
//             ),
//             child: Center(child: Text(widget.informationDate)),
//           ),
//         )
//       ),
//     );
//   }
// }





