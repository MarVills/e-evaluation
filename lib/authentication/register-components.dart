import 'package:e_evaluation/widgets/buttons.dart';
import 'package:e_evaluation/widgets/input-field.dart';
import 'package:flutter/material.dart';

import 'login.dart';

Widget registerAsSchoolHeadAdmin(context) {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
  TextEditingController schoolController = new TextEditingController();
  TextEditingController schoolAddressController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();
  return Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
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
                  Image.network(
                    "https://cdni.iconscout.com/illustration/premium/thumb/job-starting-date-2537382-2146478.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    child: Text(
                      "Create User account",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          letterSpacing: 0.5),
                    ),
                  ),
                  const SizedBox(height: 20),
                  inputField(
                    controller: nameController,
                    validator: null,
                    hint: "Full Name",
                    hasBorder: false,
                  ),
                  const SizedBox(height: 20),
                  inputField(
                    controller: genderController,
                    validator: null,
                    hint: "Gender",
                    hasBorder: false,
                  ),
                  const SizedBox(height: 20),
                  inputField(
                    controller: phoneController,
                    validator: null,
                    hint: "Phone Number",
                    hasBorder: false,
                  ),
                  const SizedBox(height: 20),
                  inputField(
                    controller: emailController,
                    validator: null,
                    hint: "Email",
                    hasBorder: false,
                  ),
                  const SizedBox(height: 20),
                  inputField(
                    controller: schoolController,
                    validator: null,
                    hint: "School",
                    hasBorder: false,
                  ),
                  const SizedBox(height: 20),
                  inputField(
                    controller: schoolAddressController,
                    validator: null,
                    hint: "School Address",
                    hasBorder: false,
                  ),
                  const SizedBox(height: 20),
                  inputField(
                    controller: passwordController,
                    validator: null,
                    hint: "Password",
                    hasBorder: false,
                  ),
                  const SizedBox(height: 20),
                  inputField(
                    controller: confirmPasswordController,
                    validator: null,
                    hint: "Confirm Password",
                    hasBorder: false,
                  ),
                  const SizedBox(height: 25),
                  textButton(
                    onPressed: () {},
                    buttonName: "Sign Up",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("If you have an account ",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 0.5,
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Sing in",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    ),
  );
}
