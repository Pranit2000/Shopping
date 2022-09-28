import 'package:flutter/material.dart';
import 'package:shopping/screens/Loginscreen.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({Key? key}) : super(key: key);

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
      if (formkey.currentState!.validate()) {
        print("ok");
        // Loginscreen();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Loginscreen()));
      } else {
        print("Error");
      }
    }
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    TextEditingController _confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formkey,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset(
                "images/shopping.png",
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Text(
              "Register",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            TextFieldContainer(
              child: TextFormField(
                controller: _email,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xFF4C53A5),
                    ),
                    hintText: "Your Email",
                    border: InputBorder.none),
                validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Email";
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return "Please Enter valid email";
                      }
                      return null;
                    },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            TextFieldContainer(
              child: TextFormField(
                controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.visibility, color: Color(0xFF4C53A5)),
                    icon: Icon(
                      Icons.lock,
                      color: Color(0xFF4C53A5),
                    ),
                    hintText: "Password",
                    border: InputBorder.none),
               validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Password";
                      }
                      if (value.length < 6) {
                        return "Password Must be 6 characters";
                      }
                      return null;
                    },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            TextFieldContainer(
              child: TextFormField(
                controller: _confirmpassword,
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon:
                        Icon(Icons.visibility, color: Color(0xFF4C53A5)),
                    icon: Icon(
                      Icons.lock,
                      color: Color(0xFF4C53A5),
                    ),
                    hintText: "Confirm Password",
                    border: InputBorder.none),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter re-Password";
                      }
                      print(_password.text);
                      if (_password.text != _confirmpassword.text) {
                        return "Password do no match";
                      }
                      return null;
                    },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  color: Color(0xFF4C53A5),
                  onPressed: validate,
                  //() {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Loginscreen(),
                  //   ),
                  // );
                  // },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Color(0xFFEDECF2),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ?"),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Loginscreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0xFF4C53A5), fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
