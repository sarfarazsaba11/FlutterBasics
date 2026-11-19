import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController passwordController = TextEditingController();

  // @override
  // void dispose() {
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  void initState(){
    super.initState();
    passwordController.text = "2222";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Input Screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 4,
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.grey],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),

        alignment: Alignment.center,

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),

              child: TextField(
                controller: passwordController,
                readOnly: true,
                autofocus: true,

                obscureText: false,
                obscuringCharacter: "*",

                keyboardType: TextInputType.number,

                decoration: const InputDecoration(
                  hintText: "Enter Password",

                  prefixIcon: Icon(Icons.lock, color: Colors.white),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                ),
              ),),
              ElevatedButton(
                onPressed: () => getData(),
                child: Text("Get data from input"),
              ),

          ],
        ),
      ),
    );
  }

  void getData() {
    String data = passwordController.text;
    print(data);

    int d = int.parse(data);
    d = d+9;
    print(d);
    passwordController.text = "";


  }
}
