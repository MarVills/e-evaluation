import 'package:e_evaluation/shared/colors.dart';
import 'package:e_evaluation/views/teacher/questionnaire-components.dart';
import 'package:e_evaluation/views/teacher/questionnaire.dart';
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

  TextEditingController name = new TextEditingController();
  TextEditingController position = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController sex = new TextEditingController();
  TextEditingController yearsInServcie = new TextEditingController();
  TextEditingController heighestDegreeLevel = new TextEditingController();
  TextEditingController gradeLevelTaught = new TextEditingController();
  TextEditingController subjectTaught = new TextEditingController();
  TextEditingController school = new TextEditingController();

  var step = 0;

  @override
  Widget build(BuildContext context) {
    final ancestorScaffold = Scaffold.maybeOf(context);
    final hasDrawer = ancestorScaffold != null && ancestorScaffold.hasDrawer;
    final Size size = MediaQuery.of(context).size;
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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.1, 0.4, 0.7, 0.9],
              colors: [
                HexColor("#4b4293").withOpacity(0.8),
                HexColor("#4b4293"),
                HexColor("#08418e"),
                HexColor("#08418e")
              ],
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  HexColor("#fff").withOpacity(0.2), BlendMode.dstATop),
              image: const NetworkImage(
                'https://mir-s3-cdn-cf.behance.net/project_modules/fs/01b4bd84253993.5d56acc35e143.jpg',
              ),
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (step == 0)
                    initialQuestions(
                      name: name,
                      position: position,
                      age: age,
                      sex: sex,
                      yearsInServcie: yearsInServcie,
                      heighestDegreeLevel: heighestDegreeLevel,
                      gradeLevelTaught: gradeLevelTaught,
                      subjectTaught: subjectTaught,
                      school: school,
                      submitFunction: () {
                        setState(() {
                          step = 1;
                        });
                      },
                    ),
                  if (step > 0)
                    Container(
                      height: size.height * 0.9,
                      // width: size.width,
                      child: BeginnerQuestionnaire(step: step),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
