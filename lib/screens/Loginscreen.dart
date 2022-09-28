import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shopping/screens/Homepage.dart';
import 'package:shopping/screens/Registerpage.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate() {
    if (formkey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    } else {
      print("Error"); //validate
    }
  }
  // void validatepas(){
  //   if(formkey){
  //     print("validated");
  //   }else{
  //     print("Not Validated");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formkey,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                "images/hp_platform_m.png",
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
            Text(
              "Login",
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
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xFF4C53A5),
                    ),
                    hintText: "Your Email",
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            TextFieldContainer(
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    // suffixIcon:
                    //     Icon(Icons.visibility, color: Color(0xFF4C53A5)),
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
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  color: Color(0xFF4C53A5),
                  onPressed: () {
                    validate();
                  },
                  child: Text(
                    "Login",
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
                Text("Don't have an account ?"),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Registerscreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Color(0xFF4C53A5), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29), color: Colors.grey[350]),
      child: child,
    );
  }
}
