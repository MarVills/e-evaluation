import 'package:e_evaluation/shared/colors.dart';
import 'package:e_evaluation/views/teacher/questionnaire-components.dart';
import 'package:flutter/material.dart';

class BeginnerQuestionnaire extends StatefulWidget {
  final step;
  final nextFunction;
  final scrollController;
  BeginnerQuestionnaire({required this.step, required this.nextFunction, required this.scrollController});
  @override
  _BeginnerQuestionnaireState createState() => _BeginnerQuestionnaireState();
}

class _BeginnerQuestionnaireState extends State<ProficientQuestionnaire> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var step = widget.step;
    var nextFunction = widget.nextFunction;
    var scrollController = widget.scrollController;
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: 20),
        // width: size.width,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.4, 0.7, 0.9],
            colors: [HexColor("#4b4293").withOpacity(0), HexColor("#4b4293"), HexColor("#08418e"), HexColor("#08418e")],
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(HexColor("#fff").withOpacity(0.2), BlendMode.dstATop),
            image: const NetworkImage(
              'https://mir-s3-cdn-cf.behance.net/project_modules/fs/01b4bd84253993.5d56acc35e143.jpg',
            ),
          ),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (step == 1)
                questionnaireContainer(
                  nextFunction: nextFunction,
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
                  teacherType: "Beginner Teacher",
                ),
              if (step == 2)
                questionnaireContainer(
                  nextFunction: nextFunction,
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
                  teacherType: "Beginner Teacher",
                ),
              if (step == 3)
                questionnaireContainer(
                  nextFunction: nextFunction,
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
                  teacherType: "Beginner Teacher",
                ),
              if (step == 4)
                questionnaireContainer(
                  nextFunction: nextFunction,
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
                  teacherType: "Beginner Teacher",
                ),
              if (step == 5)
                questionnaireContainer(
                  nextFunction: nextFunction,
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
                  teacherType: "Beginner Teacher",
                ),
              if (step == 6)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "6.1  Demonstrate an understanding of knowledge of learning environments that are responsive to community contexts.",
                    "6.2 Seek advice concerning strategies that build relationships with parents/guardians and the wider community.",
                    "6.3  Demonstrate awareness of existing laws and regulations that apply to the teaching profession, and become familiar with the responsibilities specified in the Code of Ethics for Professional Teachers.",
                    "6.4 Demonstrate knowledge and understanding of school policies and procedures to foster harmonious relationship with the wider school community",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "Beginner Teacher",
                ),
              if (step == 7)
                questionnaireContainer(
                  nextFunction: nextFunction,
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
                  teacherType: "Beginner Teacher",
                )
            ],
          ),
        ),
      ),
    );
  }
}

class ProficientQuestionnaire extends StatefulWidget {
  final step;
  final nextFunction;
  final scrollController;
  ProficientQuestionnaire({required this.step, required this.nextFunction, required this.scrollController});
  @override
  _ProficientQuestionnaireState createState() => _ProficientQuestionnaireState();
}

class _ProficientQuestionnaireState extends State<ProficientQuestionnaire> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var step = widget.step;
    var nextFunction = widget.nextFunction;
    var scrollController = widget.scrollController;
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: 20),
        // width: size.width,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.4, 0.7, 0.9],
            colors: [HexColor("#4b4293").withOpacity(0), HexColor("#4b4293"), HexColor("#08418e"), HexColor("#08418e")],
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(HexColor("#fff").withOpacity(0.2), BlendMode.dstATop),
            image: const NetworkImage(
              'https://mir-s3-cdn-cf.behance.net/project_modules/fs/01b4bd84253993.5d56acc35e143.jpg',
            ),
          ),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (step == 1)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "1.1 Apply knowledge of content within and across curriculum teaching areas.",
                    "1.2 Use research-based knowledge and principles of teaching and learning to enhance professional practice.",
                    "1.3 Ensure the positive use of ICT to facilitate the teaching and learning process.",
                    "1.4 Use a range of teaching strategies that enhance learner achievement in literacy and numeracy skills.",
                    "1.5 Apply a range of teaching strategies to develop critical and creative thinking, as well as other higher-order thinking skills.",
                    "1.6 Display proficient use of Mother Tongue, Filipino and English to facilitate teaching and learning.",
                    "1.7 Use effective verbal and non-verbal classroom communication strategies to support learner understanding, participation, engagement and achievement.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "Proficient Teacher",
                ),
              if (step == 2)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "2.1 Establish safe and secure learning environments to enhance learning through the consistent implementation of policies, guidelines and procedures.",
                    "2.2 Maintain learning environments that promote fairness, respect and care to encourage learning.",
                    "2.3 Manage classroom structure to engage learners, individually or in groups, in meaningful exploration, discovery and hands-on activities within a range of physical learning environments.",
                    "2.4 Maintain supportive learning environments that nurture and inspire learners to participate, cooperate and collaborate in continued learning.",
                    "2.5  Apply a range of successful strategies that maintain learning environments that motivate learners to work productively by assuming responsibility for their own learning.",
                    "2.6 Manage learner behavior constructively by applying positive and non-violent discipline to ensure learningfocused environments.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "Proficient Teacher",
                ),
              if (step == 3)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "3.1  Use differentiated, developmentally appropriate learning experiences to address learners’ gender, needs, strengths, interests and experiences.",
                    "3.2 Establish a learnercentered culture by using teaching strategies that respond to their linguistic, cultural, socio-economic and religious backgrounds.",
                    "3.3  Design, adapt and implement teaching strategies that are responsive to learners with disabilities, giftedness and talents.",
                    "3.4 Plan and deliver teaching strategies that are responsive to the special educational needs of learners in difficult circumstances, including: geographic isolation; chronic illness; displacement due to armed conflict, urban resettlement or disasters; child abuse and child labor practices.",
                    "3.5 Adapt and use culturally appropriate teaching strategies to address the needs of learners from indigenous groups.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "Proficient Teacher",
                ),
              if (step == 4)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "4.1  Plan, manage and implement developmentally sequenced teaching and learning process to meet curriculum requirements and varied teaching contexts.",
                    "4.2  Set achievable and appropriate learning outcomes that are aligned with learning competencies.",
                    "4.3 Adapt and implement learning programs that ensure relevance and responsiveness to the needs of all learners.",
                    "4.4 Participate in collegial discussions that use teacher and learner feedback to enrich teaching practice.",
                    "4.5 Select, develop, organize and use appropriate teaching and learning resources, including ICT, to address learning goals.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "Proficient Teacher",
                ),
              if (step == 5)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "5.1 Design, select, organize and use diagnostic, formative and summative assessment strategies consistent with curriculum requirements.",
                    "5.2 Monitor and evaluate learner progress and achievement using learner attainment data.",
                    "5.3 Use strategies for providing timely, accurate and constructive feedback to improve learner performance.",
                    "5.4 Communicate promptly and clearly the learners’ needs, progress and achievement to key stakeholders, including parents/guardians.",
                    "5.5 Utilize assessment data to inform the modification of teaching and learning practices and programs.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "Proficient Teacher",
                ),
              if (step == 6)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "6.1 Maintain learning environments that are responsive to community contexts. ",
                    "6.2 Build relationships with parents/guardians and the wider school community to facilitate involvement in the educative process.",
                    "6.3  Review regularly personal teaching practice using existing laws and regulations that apply to the teaching profession and the responsibilities specified in the Code of Ethics for Professional Teachers.",
                    "6.4 Comply with and implement school policies and procedures consistently to foster harmonious relationships with learners, parents, and other stakeholders.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "Proficient Teacher",
                ),
              if (step == 7)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "7.1 Apply a personal philosophy of teaching that is learner-centered.",
                    "7.2 Adopt practices that uphold the dignity of teaching as a profession by exhibiting qualities such as caring attitude, respect and integrity.",
                    "7.3  Participate in professional networks to share knowledge and to enhance practice.",
                    "7.4 Develop a personal professional improvement plan based on reflection of one’s practice and ongoing professional learning.",
                    "7.5 Set professional development goals based on the Philippine Professional Standards for Teachers.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "Proficient Teacher",
                )
            ],
          ),
        ),
      ),
    );
  }
}

class HighProficientQuestionnaire extends StatefulWidget {
  final step;
  final nextFunction;
  final scrollController;
  HighProficientQuestionnaire({required this.step, required this.nextFunction, required this.scrollController});
  @override
  _HighProficientQuestionnaireState createState() => _HighProficientQuestionnaireState();
}

class _HighProficientQuestionnaireState extends State<HighProficientQuestionnaire> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var step = widget.step;
    var nextFunction = widget.nextFunction;
    var scrollController = widget.scrollController;
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        // margin: EdgeInsets.symmetric(vertical: 20),
        // width: size.width,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.4, 0.7, 0.9],
            colors: [HexColor("#4b4293").withOpacity(0), HexColor("#4b4293"), HexColor("#08418e"), HexColor("#08418e")],
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(HexColor("#fff").withOpacity(0.2), BlendMode.dstATop),
            image: const NetworkImage(
              'https://mir-s3-cdn-cf.behance.net/project_modules/fs/01b4bd84253993.5d56acc35e143.jpg',
            ),
          ),
        ),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (step == 1)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "1.1 Model effective applications of content knowledge within and across curriculum teaching areas.",
                    "1.2 Collaborate with colleagues in the conduct and application of research to enrich knowledge of content and pedagogy. ",
                    "1.3. Promote effective strategies in the positive use of ICT to facilitate the teaching and learning process.",
                    "1.4 Evaluate with colleagues the effectiveness of teaching strategies that promote learner achievement in literacy and numeracy",
                    "1.5 Develop and apply effective teaching strategies to promote critical and creative thinking, as well as other higher-order thinking skills.",
                    "1.6 Model and support colleagues in the proficient use of Mother Tongue, Filipino and English to improve teaching and learning, as well as to develop the learners’ pride of their language, heritage and culture.",
                    "1.7 Display a wide range of effective verbal and non-verbal classroom communication strategies to support learner understanding, participation, engagement and achievement.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "High Proficient Teacher",
                ),
              if (step == 2)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "2.1 Exhibit effective strategies that ensure safe and secure learning environments to enhance learning through the consistent implementation of policies, guidelines and procedures.",
                    "2.2  Exhibit effective practices to foster learning environments that promote fairness, respect and care to encourage learning.",
                    "2.3  Work with colleagues to model and share effective techniques in the management of classroom structure to engage learners, individually or in groups, in meaningful exploration, discovery and hands-on activities within a range of physical learning environments.",
                    "2.4  Work with colleagues to share successful strategies that sustain supportive learning environments that nurture and inspire learners to participate, cooperate and collaborate in continued learning.",
                    "2.5 Model successful strategies and support colleagues in promoting learning environments that effectively motivate learners to work productively by assuming responsibility for their own learning.",
                    "2.6  Exhibit effective and constructive behavior management skills by applying positive and non-violent discipline to ensure learningfocused environments.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "High Proficient Teacher",
                ),
              if (step == 3)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "3.1 Work with colleagues to share differentiated, developmentally appropriate opportunities to address learners’ differences in gender, needs, strengths, interests and experiences.",
                    "3.2  Exhibit a learner-centered culture that promotes success by using effective teaching strategies that respond to their linguistic, cultural, socioeconomic and religious backgrounds.",
                    "3.3 Assist colleagues to design, adapt and implement teaching strategies that are responsive to learners with disabilities, giftedness and talents.",
                    "3.4 Evaluate with colleagues teaching strategies that are responsive to the special educational needs of learners in difficult circumstances, including: geographic isolation; chronic illness; displacement due to armed conflict, urban resettlement or disasters; child abuse and child labor practices.",
                    "3.5 Develop and apply teaching strategies to address effectively the needs of learners from indigenous groups.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "High Proficient Teacher",
                ),
              if (step == 4)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "4.1 Develop and apply effective strategies in the planning and management of developmentally sequenced teaching and learning process to meet curriculum requirements and varied teaching contexts.",
                    "4.2 Model to colleagues the setting of achievable and challenging learning outcomes that are aligned with learning competencies to cultivate a culture of excellence for all learners.",
                    "4.3 Work collaboratively with colleagues to evaluate the design of learning programs that develop the knowledge and skills of learners at different ability levels.",
                    "4.4 Review with colleagues, teacher and learner feedback to plan, facilitate, and enrich teaching practice.",
                    "4.5 Advise and guide colleagues in the selection, organization, development and use of appropriate teaching and learning resources, including ICT, to address specific learning goals",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "High Proficient Teacher",
                ),
              if (step == 5)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "5.1 Work collaboratively with colleagues to review the design, selection, organization and use of a range of effective diagnostic, formative and summative assessment strategies consistent with curriculum requirements.",
                    "5.2 Interpret collaboratively monitoring and evaluation strategies of attainment data to support learner progress and achievement.",
                    "5.3 Use effective strategies for providing timely, accurate and constructive feedback to encourage learners to reflect on and improve their own learning.",
                    "5.4 Apply skills in the effective communication of learner needs, progress and achievement to key stakeholders, including parents/guardians.",
                    "5.5 Work collaboratively with colleagues to analyze and utilize assessment data to modify practices and programs to further support learner progress and achievement.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "High Proficient Teacher",
                ),
              if (step == 6)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "6.1  Reflect on and evaluate learning environments that are responsive to community contexts.",
                    "6.2 Guide colleagues to strengthen relationships with parents/guardians and the wider school community to maximize their involvement in the educative process.",
                    "6.3  Discuss with colleagues teaching and learning practices that apply existing codes, laws and regulations that apply to the teaching profession, and the responsibilities specified in the Code of Ethics for Professional Teachers.",
                    "6.4 Exhibit commitment to and support teachers in the implementation of school policies and procedures to foster harmonious relationships with learners, parents and other stakeholders.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "High Proficient Teacher",
                ),
              if (step == 7)
                questionnaireContainer(
                  nextFunction: nextFunction,
                  questions: [
                    "7.1 Manifest a learnercentered teaching philosophy in various aspects of practice and support colleagues in enhancing their own learner-centered teaching philosophy.",
                    "7.2 Identify and utilize personal professional strengths to uphold the dignity of teaching as a profession to help build a positive teaching and learning culture within the school.",
                    "7.3 Contribute actively to professional networks within and between schools to improve knowledge and to enhance practice.",
                    "7.4  Initiate professional reflections and promote learning opportunities with colleagues to improve practice.",
                    "7.5 Reflect on the Philippine Professional Standards for Teachers to plan personal professional development goals and assist colleagues in planning and achieving their own goals.",
                  ],
                  context: context,
                  onChanged: (value) {},
                  step: step,
                  teacherType: "High Proficient Teacher",
                )
            ],
          ),
        ),
      ),
    );
  }
}
