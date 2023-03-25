import 'package:e_evaluation/shared/colors.dart';
import 'package:e_evaluation/views/teacher/questionnaire.dart';
import 'package:e_evaluation/widgets/buttons.dart';
import 'package:e_evaluation/widgets/input-field.dart';
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
                  if (step == 1)
                    beginner(
                      nextFunction: () {
                        setState(() {
                          step = 2;
                        });
                      },
                      questions: [
                        "1.1 Demonstrate content knowledge and its application within and/or across curriculumteaching areas.",
                        "1.2 Demonstrate an understanding of researchbased knowledge and principles of teaching and learning.",
                        "1.3 Show skills in the positive use of ICT to facilitate the teaching and learning process.",
                        "1.4 Demonstrate knowledge of teaching strategies that promote literacy and numeracy skills.",
                        "1.5 Apply teaching strategies that develop critical and creative thinking, and/or other higher-order thinking skills.",
                        "1.6 Use Mother Tongue, Filipino and English to facilitate teaching and learning.",
                        "1.7 Demonstrate an understanding of the range of verbal and non-verbal classroom communication strategies that support learner understanding, participation, engagement and achievement.",
                      ],
                      context: context,
                      onChanged: (value) {},
                      step: step,
                    ),
                  if (step == 2)
                    beginner(
                      nextFunction: () {
                        setState(() {
                          step = 3;
                        });
                      },
                      questions: [
                        "2.1 Demonstrate knowledge of policies, guidelines and procedures that provide safe and secure learning environments.",
                        "2.2 Demonstrate understanding of learning environments that promote fairness, respect and care to encourage learning.",
                        "2.3 Demonstrate knowledge of managing classroom structure that engages learners, individually or in groups, in meaningful exploration, discovery and hands-on activities within the available physical learning environments.",
                        "2.4 Demonstrate understanding of supportive learning environments that nurture and inspire learner participation.",
                        "2.5 Demonstrate knowledge of learning environments that motivate learners to work productively by assuming responsibility for their own learning.",
                        "2.6 Demonstrate knowledge of positive and non-violent discipline in the management of learner behavior.",
                      ],
                      context: context,
                      onChanged: (value) {},
                      step: step,
                    ),
                  if (step == 3)
                    beginner(
                      nextFunction: () {
                        setState(() {
                          step = 4;
                        });
                      },
                      questions: [
                        "3.1 Demonstrate knowledge and understanding of differentiated teaching to suit the learners' gender, needs, strengths, interests and experiences.",
                        "3.2  Implement teaching strategies that are responsive to the learners' linguistic, cultural, socio-economic and religious backgrounds.",
                        "3.3 Use strategies responsive to learners with disabilities, giftedness and talents.",
                        "3.4 Demonstrate understanding of the special educational needs of learners in difficult circumstances, including: geographic isolation; chronic illness; displacement due to armed conflict, urban resettlement or disasters; child abuse and child labor practices.",
                        "3.5 Demonstrate knowledge of teaching strategies that are inclusive of learners from indigenous groups.",
                      ],
                      context: context,
                      onChanged: (value) {},
                      step: step,
                    ),
                  if (step == 4)
                    beginner(
                      nextFunction: () {
                        setState(() {
                          step = 5;
                        });
                      },
                      questions: [
                        "4.1 Prepare developmentally sequenced teaching and learning process to meet curriculum requirements.",
                        "4.2  Identify learning outcomes that are aligned with learning competencies.",
                        "4.3 Demonstrate knowledge in the implementation of relevant and responsive learning programs.",
                        "4.4 Seek advice concerning strategies that can enrich teaching practice.",
                        "4.5  Show skills in the selection, development and use of a variety of teaching and learning resources, including ICT, to address learning goals.",
                      ],
                      context: context,
                      onChanged: (value) {},
                      step: step,
                    ),
                  if (step == 5)
                    beginner(
                      nextFunction: () {
                        setState(() {
                          step = 6;
                        });
                      },
                      questions: [
                        "5.1 Demonstrate knowledge of the design, selection, organization and use of diagnostic, formative and summative assessment strategies consistent with curriculum requirements.",
                        "5.2 Demonstrate knowledge of monitoring and evaluation of learner progress and achievement using learner attainment data.",
                        "5.3 Demonstrate knowledge of providing timely, accurate and constructive feedback to improve learner performance.",
                        "5.4 Demonstrate familiarity with a range of strategies for communicating learner needs, progress and achievement.",
                        "5.5 Demonstrate an understanding of the role of assessment data as feedback in teaching and learning practices and programs.",
                      ],
                      context: context,
                      onChanged: (value) {},
                      step: step,
                    ),
                  if (step == 6)
                    beginner(
                      nextFunction: () {
                        setState(() {
                          step = 7;
                        });
                      },
                      questions: [
                        "6.1  Demonstrate an understanding of knowledge of learning environments that are responsive to community contexts.",
                        "6.2 Seek advice concerning strategies that build relationships with parents/guardians and the wider community.",
                        "6.3  Demonstrate awareness of existing laws and regulations that apply to the teaching profession, and become familiar with the responsibilities specified in the Code of Ethics for Professional Teachers.",
                        "6.4 Demonstrate knowledge and understanding of school policies and procedures to foster harmonious relationship with the wider school community",
                      ],
                      context: context,
                      onChanged: (value) {},
                      step: step,
                    ),
                  if (step == 7)
                    beginner(
                      nextFunction: () {
                        setState(() {
                          // step = 7;
                        });
                      },
                      questions: [
                        "7.1 Articulate a personal philosophy of teaching that is learner-centered.",
                        "7.2 Demonstrate behaviors that uphold the dignity of teaching as a profession by exhibiting qualities such as caring attitude, respect and integrity.",
                        "7.3 Seek opportunities to establish professional links with colleagues.",
                        "7.4 Demonstrate an understanding of how professional reflection and learning can be used to improve practice.",
                        "7.5 Demonstrate motivation to realize professional development goals based on the Philippine Professional Standards for Teachers.",
                      ],
                      context: context,
                      onChanged: (value) {},
                      step: step,
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
