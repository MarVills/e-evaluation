import 'package:e_evaluation/shared/colors.dart';
import 'package:e_evaluation/shared/queries/authentication.dart';
import 'package:e_evaluation/views/authentication/register-components.dart';
import 'package:e_evaluation/widgets/buttons.dart';
import 'package:e_evaluation/widgets/input-field.dart';
import 'package:flutter/material.dart';
import 'login.dart';

enum FormData { Name, Phone, Email, Gender, password, ConfirmPassword }

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Color enabled = const Color.fromARGB(255, 63, 56, 89);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF1F1A30);
  bool ispasswordev = true;
  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController gender = new TextEditingController();
  TextEditingController department = new TextEditingController();
  TextEditingController schoolAddress = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController confirmPassword = new TextEditingController();
  bool isLoading = true;
  var _form = GlobalKey<FormState>();
  var query = AuthQuery();
  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.1, 0.4, 0.7, 0.9],
            colors: [HexColor("#4b4293").withOpacity(0.8), HexColor("#4b4293"), HexColor("#08418e"), HexColor("#08418e")],
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(HexColor("#fff").withOpacity(0.2), BlendMode.dstATop),
            image: const NetworkImage(
              'https://mir-s3-cdn-cf.behance.net/project_modules/fs/01b4bd84253993.5d56acc35e143.jpg',
            ),
          ),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : SingleChildScrollView(
                  child: Form(
                    key: _form,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 5,
                          color: const Color.fromARGB(255, 224, 238, 238).withOpacity(0.4),
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
                                    "Create Division Administrator Account",
                                    style: TextStyle(color: Colors.white.withOpacity(0.9), letterSpacing: 0.5),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                inputField(
                                  controller: name,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "This field is required!";
                                    } else {
                                      return null;
                                    }
                                  },
                                  hint: "Full Name",
                                  hasBorder: false,
                                ),
                                const SizedBox(height: 20),
                                inputField(
                                  controller: gender,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "This field is required!";
                                    } else {
                                      return null;
                                    }
                                  },
                                  hint: "Gender",
                                  hasBorder: false,
                                ),
                                const SizedBox(height: 20),
                                inputField(
                                  controller: phone,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "This field is required!";
                                    } else {
                                      return null;
                                    }
                                  },
                                  hint: "Phone Number",
                                  hasBorder: false,
                                ),
                                const SizedBox(height: 20),
                                inputField(
                                  controller: email,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "This field is required!";
                                    } else {
                                      return null;
                                    }
                                  },
                                  hint: "Email",
                                  hasBorder: false,
                                ),
                                const SizedBox(height: 20),
                                inputField(
                                  controller: department,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "This field is required!";
                                    } else {
                                      return null;
                                    }
                                  },
                                  hint: "Department",
                                  hasBorder: false,
                                ),
                                const SizedBox(height: 20),
                                inputField(
                                  controller: password,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "This field is required!";
                                    } else if (password.text.length < 6) {
                                      return "Password must be atleast 6 digits";
                                    } else {
                                      return null;
                                    }
                                  },
                                  hint: "Password",
                                  hasBorder: false,
                                  isObscureText: true,
                                ),
                                const SizedBox(height: 20),
                                inputField(
                                  controller: confirmPassword,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "This field is required!";
                                    } else if (password.text != confirmPassword.text) {
                                      return "Password does not match";
                                    } else {
                                      return null;
                                    }
                                  },
                                  hint: "Confirm Password",
                                  hasBorder: false,
                                  isObscureText: true,
                                ),
                                const SizedBox(height: 25),
                                textButton(
                                  onPressed: () async {
                                    if (_form.currentState!.validate()) {
                                      _form.currentState!.save();
                                      setState(() {
                                        isLoading = true;
                                      });
                                      var response = await query.signUpWithEmailAndPassword(email: email.text, password: confirmPassword.text);
                                      print("see response $response");

                                      setState(() {
                                        isLoading = false;
                                      });
                                    }
                                  },
                                  buttonName: "Register",
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
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
                ),
        ),
      ),
    );
  }
}
