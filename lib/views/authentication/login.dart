import 'package:e_evaluation/services/emailChecker.dart';
import 'package:e_evaluation/shared/colors.dart';
import 'package:e_evaluation/shared/queries/authentication.dart';
import 'package:e_evaluation/shared/widgets/widgets.dart';
import 'package:e_evaluation/views/authentication/register.dart';
import 'package:e_evaluation/views/division-administrator/div-admin-dashboard.dart';
import 'package:e_evaluation/views/teacher/teacher-dashboard.dart';
import 'package:e_evaluation/widgets/buttons.dart';
import 'package:e_evaluation/widgets/input-field.dart';
import 'package:flutter/material.dart';
import 'forgot-password.dart';

enum FormData {
  Email,
  password,
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Color enabled = const Color.fromARGB(255, 63, 56, 89);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF1F1A30);
  bool ispasswordev = true;
  bool isLoading = true;
  var _form = GlobalKey<FormState>();
  var query = AuthQuery();
  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
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
                                  Text(
                                    "Please sign in to continue",
                                    style: TextStyle(
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  inputField(
                                    controller: email,
                                    validator: (value) {
                                      if (password.text.isEmpty) {
                                        return "This field is required";
                                      } else if (!isValidEmail(email.text)) {
                                        return "Please enter valid email";
                                      } else {
                                        return null;
                                      }
                                    },
                                    hint: "Email",
                                    hasBorder: false,
                                  ),
                                  const SizedBox(height: 20),
                                  inputField(
                                    controller: password,
                                    validator: (value) {
                                      if (password.text.isEmpty) {
                                        return "This field is required";
                                      } else {
                                        return null;
                                      }
                                    },
                                    hint: "Password",
                                    hasBorder: false,
                                    isObscureText: true,
                                  ),
                                  const SizedBox(height: 20),
                                  textButton(
                                    onPressed: () async {
                                      if (_form.currentState!.validate()) {
                                        _form.currentState!.save();
                                        setState(() {
                                          isLoading = true;
                                        });
                                        var response = await query.signInWithEmailAndPassword(email: email.text, password: password.text);
                                        print("see response ${response!.email}");
                                        print("see response ${response.uid}");
                                        if (response != null) {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => TeacherDashboard(), //DivAdminDashboard(),
                                            ),
                                          );
                                        } else {
                                          showSnackBar(context, "Login failed");
                                        }

                                        setState(() {
                                          isLoading = false;
                                        });
                                      }
                                    },
                                    buttonName: "Login",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: (() {
                              Navigator.pop(context);
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ForgotPasswordScreen();
                                  },
                                ),
                              );
                            }),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // const Text("Don't have an account? ",
                              //     style: TextStyle(
                              //       color: Colors.grey,
                              //       letterSpacing: 0.5,
                              //     )),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return SignupScreen();
                                      },
                                    ),
                                  );
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click, // or SystemMouseCursors.basic
                                  child: Text(
                                    "Sign Up as Division Administrator",
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
                          const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
