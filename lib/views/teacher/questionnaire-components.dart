import 'package:e_evaluation/widgets/buttons.dart';
import 'package:e_evaluation/widgets/input-field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget questionWidget({
  required question,
  // required "",
  required onChanged,
  // required value,
  required groupValue,
}) {
  return Container(
    child: Column(
      children: [
        SizedBox(height: 20),
        Text(
          question,
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(height: 10),
        RadioListTile(
          title: Text(
            'Not Competent',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          dense: true,
          contentPadding: EdgeInsets.zero,
          // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
          value: "not-competent",
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        RadioListTile(
          title: Text(
            'Slightly Competent',
            style: TextStyle(color: Colors.black),
          ),
          dense: true,
          contentPadding: EdgeInsets.zero,
          // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
          value: "slightly-competent",
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        RadioListTile(
          title: Text(
            'Fairly Competent',
            style: TextStyle(color: Colors.black),
          ),
          dense: true,
          contentPadding: EdgeInsets.zero,
          // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
          value: "fairly-competent",
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        RadioListTile(
          title: Text(
            'Moderately Competent',
            style: TextStyle(color: Colors.black),
          ),
          dense: true,
          contentPadding: EdgeInsets.zero,
          // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
          value: "moderately-competent",
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        RadioListTile(
          title: Text(
            'Highly Competent',
            style: TextStyle(color: Colors.black),
          ),
          dense: true,
          contentPadding: EdgeInsets.zero,
          // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
          value: "highly-competent",
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ],
    ),
  );
}

Widget initialQuestions({
  required name,
  required position,
  required age,
  required sex,
  required yearsInServcie,
  required heighestDegreeLevel,
  required gradeLevelTaught,
  required subjectTaught,
  required school,
  required submitFunction,
}) {
  return Card(
    elevation: 5,
    color: const Color.fromARGB(255, 171, 211, 250).withOpacity(0.4),
    child: Container(
      width: 400,
      padding: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Please fill-up the following fields.",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 20),
          inputField(
            controller: name,
            validator: null,
            hint: "Full Name",
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          inputField(
            controller: position,
            validator: null,
            hint: 'Position',
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          inputField(
            controller: age,
            validator: null,
            hint: "Age",
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          inputField(
            controller: sex,
            validator: null,
            hint: "Sex",
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          inputField(
            controller: yearsInServcie,
            validator: null,
            hint: "Number of Years in Teaching",
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          inputField(
            controller: heighestDegreeLevel,
            validator: null,
            hint: "Highest degree level",
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          inputField(
            controller: gradeLevelTaught,
            validator: null,
            hint: "Grade level Taught",
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          inputField(
            controller: subjectTaught,
            validator: null,
            hint: "Subject Taught",
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          inputField(
            controller: school,
            validator: null,
            hint: "School",
            hasBorder: false,
          ),
          const SizedBox(height: 20),
          textButton(
            onPressed: submitFunction,
            buttonName: "Submit",
          ),
        ],
      ),
    ),
  );
}

Map setCurrentStepData(step) {
  switch (step) {
    case 1:
      return {"step": step, "title": "Domain 1: Content and Pedagogy"};
    case 2:
      return {"step": step, "title": "Domain 2: Learning Environment"};
    case 3:
      return {"step": step, "title": "Domain 3: Diversity of Learners"};
    case 4:
      return {"step": step, "title": "Domain 4: Curriculum and Planning"};
    case 5:
      return {"step": step, "title": "Domain 5: Assesment and Reporting"};
    case 6:
      return {"step": step, "title": "Domain 6: Community Linkage and Professional Engagement"};
    case 7:
      return {"step": step, "title": "Domain 7: Personal Growth and Professional Development"};
    default:
      return {"step": 0, "title": "First Steps"};
  }
}

Widget questionnaireContainer({
  required nextFunction,
  required questions,
  required context,
  required onChanged,
  required step,
  required teacherType,
}) {
  List<Widget> questionWidgets = [];
  final Size size = MediaQuery.of(context).size;
  questions.forEach((question) {
    questionWidgets.add(questionWidget(question: question, onChanged: onChanged, groupValue: ""));
  });

  return Card(
    elevation: 5,
    // color: const Color.fromARGB(255, 171, 211, 250).withOpacity(0.4),
    color: const Color.fromRGBO(255, 255, 255, 0.5).withOpacity(0.9),
    child: Container(
      width: 400,
      padding: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              teacherType,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 0.5,
                fontSize: 25,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              setCurrentStepData(step)['title'],
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 0.5,
                fontSize: 18,
              ),
            ),
          ),
          for (var question in questionWidgets) question,
          SizedBox(height: 20),
          textButton(
            onPressed: nextFunction,
            buttonName: "Next",
          ),
        ],
      ),
    ),
  );
}
