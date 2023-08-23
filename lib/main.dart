import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage( ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Login(),
          );
        }
      
}
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Kiran App", style:TextStyle(color: Colors.black, fontSize: 28.0,
          fontWeight: FontWeight.bold,
          ),
          ),
          const Text("LOGIN FORM",style: TextStyle(color: Colors.black, fontSize: 44.0, fontWeight:FontWeight.bold,
          ),
          ),
          const SizedBox(height: 44.0,
          ),
          const Text("Email", style:TextStyle(color: Colors.black, fontSize: 18.0,
          ),
          ),
          TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Type Your Email",
              prefixIcon: Icon(Icons.mail, color: Color.fromARGB(255, 105, 105, 105)),          
              ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          const Text("Password", style:TextStyle(color: Colors.black, fontSize: 18.0,
          ),
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Type Your Password",
              prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 105, 105, 105)),
              ),
          ),
          const SizedBox(height: 8.0,
          ),
          const Text("Forgot Password?", 
          style: TextStyle(color: Colors.blue),
          ),
          const SizedBox(
            height: 88.0,
          ),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Color.fromARGB(255, 0, 127, 254),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              onPressed: () {},
              child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 18.0,
              )),
            ),
          ),
        ],
      ),
    );
  }
}