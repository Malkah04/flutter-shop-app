import 'package:flutter/material.dart';
import 'shop.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool hide = true, hide2 = true;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: Form(
        key: _key,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: fullNameController,
                validator: (val) {
                  if (val == null || val[0] != val[0].toUpperCase()) {
                    return 'First letter must be uppercase';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              TextFormField(
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
              TextFormField(
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
                    icon: Icon(!hide ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      showPassword();
                    },
                  ),
                ),
                obscureText: hide,
              ),
              TextFormField(
                controller: confirmPasswordController,
                validator: (val) {
                  if (val == null || val != passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon:
                        Icon(!hide2 ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      showConfPassword();
                    },
                  ),
                ),
                obscureText: hide2,
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      showRegisterDialog();
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 65, 3, 77),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
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

  showConfPassword() {
    hide2 = !hide2;
    setState(() {});
  }

  void showRegisterDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Register"),
          content: const Text("Account created successfully"),
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
