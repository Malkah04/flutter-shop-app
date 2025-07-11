import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  bool clickedLogin = false, clickedReg = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Shop market',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 40, 22, 44)),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/firstpage.png',
                height: 200,
                width: 200,
              ),
              Image.network(
                "https://img.freepik.com/free-vector/login-concept-illustration_114360-739.jpg?semt=ais_hybrid&w=740",
                height: 100,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: clickedLogin ? 170 : 150,
                child: TextButton(
                  onPressed: () {
                    setState(() => clickedLogin = !clickedLogin);
                    Future.delayed(Duration(seconds: 1), () {
                      setState(() => clickedLogin = !clickedLogin);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 169, 12, 197),
                  ),
                  child: Text(
                    "login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: clickedReg ? 170 : 150,
                child: TextButton(
                    onPressed: () {
                      setState(() => clickedReg = !clickedReg);
                      Future.delayed(Duration(seconds: 1), () {
                        setState(() => clickedReg = !clickedReg);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      });
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 70, 5, 82)),
                    child: Text(
                      "register",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
