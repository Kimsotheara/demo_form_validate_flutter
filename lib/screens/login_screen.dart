import 'package:demo_form_validation/screens/sign_up_form.dart';
import 'package:demo_form_validation/screens/unlog_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/app_body.dart';
import '../constants/constants.dart';
import '../theme/theme_manager.dart';

void main()=> runApp(const Login());

ThemeManager themeManager = ThemeManager(ThemeMode.light);

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  var isLoading = false;
  var isobx = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: themeManager.themeMode == ThemeMode.light
              ? Colors.white
              : Colors.white,
          scrolledUnderElevation: 0,
          elevation: 0,
        ),
        backgroundColor: themeManager.themeMode == ThemeMode.light
            ? Colors.white
            : Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return _buildLargeScreen(
                  emailController,
                  passwordController,
                  size,
                );
              } else {
                return _buildSmallScreen(
                    size, emailController, passwordController);
              }
            },
          ),
        ),
      ),
    );
  }

  /// For large screens
  Widget _buildLargeScreen(
      TextEditingController emailController,
      TextEditingController passwordController,
      Size size,
      ) {
    return Row(
      children: [
        SizedBox(width: size.width * 0.06),
        Expanded(
          flex: 5,
          child: _buildMainBody(size, emailController, passwordController),
        ),
      ],
    );
  }

  /// For Small screens
  Widget _buildSmallScreen(Size size, TextEditingController emailController,
      TextEditingController passwordController) {
    return Center(
      child: _buildMainBody(size, emailController, passwordController),
    );
  }

  bool isEmailValid(String email) {
    final RegExp regex = RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
    return regex.hasMatch(email);
  }

  /// Main Body
  Widget _buildMainBody(Size size, TextEditingController emailController,
      TextEditingController passwordController) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: size.width > 600
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                'Login Form',
                style: GoogleFonts.courgette(
                  color: themeManager.themeMode == ThemeMode.light
                      ? Colors.white
                      : Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(
                'Hello World!',
                style: GoogleFonts.courgette(
                  color: themeManager.themeMode == ThemeMode.light
                      ? Colors.white
                      : Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /// username or Gmail
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: kTextFormFieldStyle(),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a Email';
                        } else if (!isEmailValid(value)) {
                          return 'Please enter a valid Email';
                        } else {
                          return null;
                        }
                      },
                    ),

                    SizedBox(
                      height: size.height * 0.02,
                    ),

                    /// password
                    TextFormField(
                      style: kTextFormFieldStyle(),
                      controller: passwordController,

                      obscureText: !isobx,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_open),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isobx ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              isobx = !isobx;
                            });
                          },
                        ),
                        hintText: 'Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value.length < 6) {
                          return 'at least enter 6 characters';
                        } else if (value.length > 13) {
                          return 'maximum character is 13';
                        }
                        return null;
                      },
                    ),

                    // Row(
                    //   children: [
                    //     const Spacer(),
                    //     TextButton(
                    //         onPressed: () {
                    //           Navigator.of(context)
                    //               .pushNamed(ResetPassword.routeName);
                    //         },
                    //         child: const Text("Forget Password?",
                    //             style: TextStyle(
                    //                 color: Colors.deepPurpleAccent,
                    //                 fontSize: 16))),
                    //   ],
                    // ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),

                    /// Login Button
                    loginButton(emailController, passwordController),
                    SizedBox(
                      height: size.height * 0.03,
                    ),

                    /// Navigate To Login Screen
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const SignUpPage()));
                        nameController.clear();
                        emailController.clear();
                        passwordController.clear();
                      },
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: kHaveAnAccountStyle(size),
                          children: const [
                            TextSpan(
                                text: " Sign up",
                                style: TextStyle(
                                    color: Colors.deepPurpleAccent,
                                    fontSize: 19)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Login Button
  Widget loginButton(TextEditingController emailController,
      TextEditingController passwordController) {
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        onPressed: () async {
          isobx = false;

          if ((emailController.text == 'admin') &&
              (passwordController.text == 'admin')) {

            // Navigator.of(context)
            //     .pushReplacementNamed(HomeBody.routeName);
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: ((context) => const HomeBody())
                )
            );
          }else{
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: ((context) => const UnLogin())
                )
            );
          }
        },
        child: Text(
          'Login',
          style: GoogleFonts.courgette(
            color: themeManager.themeMode == ThemeMode.light
                ? Colors.white
                : Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
