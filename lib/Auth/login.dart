import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note App"),
        // centerTitle:true,
      ),
      body: 
         Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 300, height: 300, child: Image.asset("images/1.png")),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            label: Text("E-Mail"),
                            hintText: "Enter Your E-mail",
                            prefixIcon: Icon(Icons.email)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          label: Text("Password"),
                          hintText: "Enter Your Password",
                          prefixIcon: Icon(Icons.key),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Forget Password")),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed("homepage");
                              },
                              child: Text("Login")),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text("If you don't have an acounnt "),
                          InkWell(
                            child: Text(
                              "SignUp",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed("Signup");
                            },
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
