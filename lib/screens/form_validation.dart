import 'package:flutter/material.dart';

class InputFormScreen extends StatefulWidget {
  @override
  State<InputFormScreen> createState() => _InputFormScreenState();
}

class _InputFormScreenState extends State<InputFormScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
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

        child:Form(
          key:formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),

                child: TextFormField(
                  validator:(val)  {
                    if(val!.isEmpty){
                      return "UserName cannot be empty";
                    }
                  },
                  controller: nameController,
                  // readOnly: true,
                  autofocus: true,

                  obscureText: false,
                  // obscuringCharacter: "*",

                  keyboardType: TextInputType.text,

                  decoration: const InputDecoration(
                    hintText: "Enter name",

                    prefixIcon: Icon(Icons.person, color: Colors.white),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange, width: 2),
                    ),
                  ),
                ),),
              Padding(
                padding: const EdgeInsets.all(25),

                child: TextFormField(
                  validator:(val){
                    if(val!.length <6 ){
                      return " password should be greater than 8 characters";
                    }
                  },
                  controller: passwordController,

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
      ),
    );
  }

  void getData() {
  if(formKey.currentState!.validate()){
    print(formKey.currentState);

  }


  }
}
