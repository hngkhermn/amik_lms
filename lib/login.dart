import 'package:amik_lms/dashboard.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget{

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>{
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Halaman Login"),
      centerTitle: true,
      backgroundColor: Color(0x4C80E5fff),
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                    alignment: FractionalOffset.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                        child: Image.asset(
                          "images/amik.png",
                          height: 80,
                          width: 80,
                        ),
                    ),
              ),
              SizedBox(height: 40),
              Text(
                "Let's Get You Signed In",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "Ayo Masuk dan Kerjakan Tugas",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(146, 142, 142, 100),
                ),
              ),
              SizedBox(height: 120,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email / NPM",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: passController,
                obscureText: passToggle,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffix: InkWell(
                    onTap: (){
                    setState(() {
                    passToggle = !passToggle;
                    });
                    },
                    child: Icon(passToggle ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(146, 142, 142, 100),
                ),
              ),
              ),
              SizedBox(height: 60,),
              InkWell(
                onTap: (){
                  if(_formfield.currentState!.validate()){
                    print("Success");
                    emailController.clear();
                    passController.clear();
                  }
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0x4C80E5fff),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text("Sign In", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun?",
                  style: TextStyle(
                    fontSize: 17,
                   ),
                   ),
                   TextButton(
                    onPressed: (){}, 
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                  )),
              ],),
            ],),
          ),
        ),
      ),
    );
    
  }
}