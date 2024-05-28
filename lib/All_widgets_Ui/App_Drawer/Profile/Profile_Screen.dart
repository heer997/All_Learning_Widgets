import "package:flutter/material.dart";
import "package:sdreatech_learning_widget/All_widgets_Ui/App_Drawer/Profile/profile_Image.dart";

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  bool _autoValidate = true;

  bool _obscureText = true;
  bool _obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile Screen",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: 350.0,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 40.0),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProfileImage();
                            },
                          ),
                        );
                      },
                      child: const Hero(
                        tag: "picture",
                        child: CircleAvatar(
                          radius: 70.0,
                          backgroundImage: NetworkImage(
                              "https://banner2.cleanpng.com/20180329/zue/kisspng-computer-icons-user-profile"
                              "-person-5abd85306ff7f7.0592226715223698404586.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(height: 70.0),
                    TextFormField(
                      controller: usernameController,
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter required detail";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter the username",
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter required detail";
                        } else if (!RegExp(
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))'
                                r'@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                            .hasMatch(value)) {
                          return "please enter valid email address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter the email",
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: _obscureText,
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      autovalidateMode: _autoValidate
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter required detail";
                        } else if (value.length < 5) {
                          return "please enter valid password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                _obscureText = !_obscureText;
                              },
                            );
                          },
                          icon: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        hintText: "Enter the password",
                        labelText: "password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      obscureText: _obscureText2,
                      keyboardType: TextInputType.visiblePassword,
                      controller: confirmpasswordController,
                      autovalidateMode: _autoValidate
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter required detail";
                        } else if (value.length < 5) {
                          return "please enter valid detail";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                _obscureText2 = !_obscureText2;
                              },
                            );
                          },
                          icon: Icon(_obscureText2
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        hintText: "Enter the confirm password",
                        labelText: "confirm password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    ElevatedButton(
                      onPressed: () {
                        if (usernameController.text.toString() == "" ||
                            emailController.text.toString() == "" ||
                            passwordController.text.toString() == "" ||
                            confirmpasswordController.text.toString() == "") {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                "please fill all the details...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  "Fill all details",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content:
                                    const Text("please fill all the details"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "Ok",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        } else if (_formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                  "SUBMIT",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                content: const Text("Are you sure ?"),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "No",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return FormDetails(
                                              usernameController.text
                                                  .toString(),
                                              emailController.text.toString(),
                                              passwordController.text
                                                  .toString(),
                                              confirmpasswordController.text
                                                  .toString(),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Yes",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        fixedSize: const Size(350.0, 50.0),
                        shape: const LinearBorder(),
                      ),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 40.0),
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

class FormDetails extends StatelessWidget {
  FormDetails(this.username, this.email, this.password, this.confirmpassword,
      {super.key});

  var username, email, password, confirmpassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Form Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Username\t\t\t\t\t: $username",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            Text(
              "Email\t\t\t\t\t\t\t\t\t: $email",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            Text(
              "Password\t\t\t\t\t\t\t\t\: $password",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            Text(
              "Confirm Password : $confirmpassword",
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
