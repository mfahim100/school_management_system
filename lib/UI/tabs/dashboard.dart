import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/auth/sign_in_screen.dart';
import 'package:school_manegment_system/core/providers/dashboard_provider.dart';
import 'package:school_manegment_system/pie_grapg_widgets/my_bar_chart.dart';
import 'package:school_manegment_system/pie_grapg_widgets/my_pie_graph.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<DashBoardProvider>(context, listen: false)
        .getAllStudentsProvider();
    Provider.of<DashBoardProvider>(context, listen: false)
        .getMaleStudentsProvider();
    Provider.of<DashBoardProvider>(context, listen: false)
        .getFemaleStudentProvider();
    Provider.of<DashBoardProvider>(context, listen: false)
        .getPresentStudentProvider();
    Provider.of<DashBoardProvider>(context, listen: false)
        .getAbsentStudentProvider();
    Provider.of<DashBoardProvider>(context, listen: false)
        .getLeaveStudentProvider();
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<DashBoardProvider>(
      builder: (context, dashBoardProvider, child) {
        return SizedBox(
          height: 80 * h,
          width: 70 * w,
          child: Padding(
            padding: EdgeInsets.all(.3 * w),
            child: Column(
              children: [
                SizedBox(
                  height: 08 * h,
                  child: Padding(
                      padding: EdgeInsets.only(left: 1 * w, right: 1 * w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 13 * w,
                            child: Center(
                              child: Text(
                                'Dashboard',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 2 * w,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40 * w,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Muhammad Fahim',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 1.8 * w,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 2 * w,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 2 * w,
                                  ),
                                  SizedBox(
                                    width: 1 * w,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                                        return const SignInScreen();
                                      }));
                                    },
                                    icon: const Icon(
                                      Icons.logout,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                  )
                                ]),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 20 * h,
                  child: Padding(
                      padding: EdgeInsets.all(.5 * w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 21.5 * w,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(.5),
                              borderRadius: BorderRadius.circular(1 * w),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 13 * w,
                                  child: const Image(
                                    image: AssetImage(
                                        'assets/images/allStudents.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 07 * w,
                                  child: Center(
                                    child: Text(
                                      'All Students ${dashBoardProvider.getAllStudents.length.toString()}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1.5 * w,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 1 * w,
                          ),
                          Container(
                            width: 21.5 * w,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(.5),
                              borderRadius: BorderRadius.circular(1 * w),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 13 * w,
                                  child: const Image(
                                    image: AssetImage('assets/images/male.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 07 * w,
                                  child: Center(
                                    child: Text(
                                      'Male Students ${dashBoardProvider.getMaleStudent.length}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1.4 * w,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 1 * w,
                          ),
                          Container(
                            width: 21 * w,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(.5),
                              borderRadius: BorderRadius.circular(1 * w),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 13 * w,
                                  child: const Image(
                                    image:
                                        AssetImage('assets/images/female.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 07 * w,
                                  child: Center(
                                    child: Text(
                                      'Female Students ${dashBoardProvider.getFemaleStudent.length}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1.4 * w,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 2 * w,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 50 * h,
                  child: Padding(
                      padding: EdgeInsets.all(.5 * w),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 1.5 * w,
                          ),
                          Container(
                              width: 30 * w,
                              height: 45 * h,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(.5),
                                borderRadius: BorderRadius.circular(1 * w),
                              ),
                              child: const MyPieChart()),
                          SizedBox(
                            width: 1 * w,
                          ),
                          Container(
                              height: 45 * h,
                              width: 32 * w,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(.5),
                                borderRadius: BorderRadius.circular(1 * w),
                              ),
                              child: const MyBarChart()),
                        ],
                      )),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
