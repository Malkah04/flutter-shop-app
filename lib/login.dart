import 'package:flutter/material.dart';
import 'shop.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hide = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailController,
                  validator: (val) {
                    if (val == null || !val.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passwordController,
                  validator: (val) {
                    if (val == null || val.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon:
                          Icon(!hide ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        showPassword();
                      },
                    ),
                  ),
                  obscureText: hide,
                ),
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showLoginDialog();
                      }
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 169, 12, 197),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showPassword() {
    hide = !hide;
    setState(() {});
  }

  void showLoginDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Login"),
          content: const Text("Account sign in Successful"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Shop()),
                );
              },
              child: const Text("close"),
            ),
          ],
        );
      },
    );
  }
}
