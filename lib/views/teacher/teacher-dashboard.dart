import 'package:e_evaluation/shared/colors.dart';
import 'package:flutter/material.dart';

class TeacherDashboard extends StatefulWidget {
  @override
  State<TeacherDashboard> createState() => _TeacherDashboardState();
}

class _TeacherDashboardState extends State<TeacherDashboard> {
  Color enabled = const Color.fromARGB(255, 63, 56, 89);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF1F1A30);
  bool ispasswordev = true;

  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ancestorScaffold = Scaffold.maybeOf(context);
    final hasDrawer = ancestorScaffold != null && ancestorScaffold.hasDrawer;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: HexColor("#4b4293"),
          leading: hasDrawer
              ? IconButton(
                  icon: Icon(Icons.menu),
                  onPressed:
                      hasDrawer ? () => ancestorScaffold!.openDrawer() : null,
                )
              : null,
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dashboard"),
                Row(
                  children: [
                    // Text("Dashboard"),
                    GestureDetector(
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Icon(Icons.account_circle),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: Container(
          child: Column(),
        ),
      ),
    );
  }
}
