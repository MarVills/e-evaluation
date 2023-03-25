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
