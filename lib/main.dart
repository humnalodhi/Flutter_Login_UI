import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Form Field Widget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, right: 15, left: 15),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                enabled: true,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  filled: false,
                  prefixIcon: const Icon(Icons.email_outlined),
                  fillColor: Colors.grey.withOpacity(0.3),
                  hintText: 'Enter your email address',
                  hintStyle:
                      TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black54, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Email',
                  errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
              child: TextFormField(
                cursorColor: Colors.black,
                enabled: true,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  filled: false,
                  prefixIcon: const Icon(Icons.lock_outline),
                  suffixIcon: const Icon(Icons.visibility_off),
                  fillColor: Colors.grey.withOpacity(0.3),
                  hintText: 'Enter your password',
                  hintStyle:
                      TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black54, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Password',
                  errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, right: 15, left: 15),
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
