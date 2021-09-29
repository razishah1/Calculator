import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController firstNumberController = TextEditingController();

  TextEditingController secondNumberController = TextEditingController();

  int sum1 = 0;
  int sum5 = 0;
  int sum3 = 0;
  num sum4 = 0;//Divid a jahatw Bognakso take tai DIvid ar jonno "int" ar pori borte "num" babohar korta hoi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(child: Text('Calculator')),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(34.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Column(
                children: [
                  Text('ADD'),
                  Text("$sum1",
                    style: TextStyle(fontSize: 50, color: Colors.white,),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Column(
                children: [
                  Text('REMUVE'),
                  Text("$sum5",
                    style: TextStyle(fontSize: 50, color: Colors.white,),
                  ),
                ],
              ),
              SizedBox(width: 16),
              Column(
                children: [     
                  Text('INTU'),
                  Text("$sum3",
                    style: TextStyle(fontSize: 50, color: Colors.white,),
                  ),
                ],
              ),
              SizedBox(width: 16), 
              Column(
                children: [
                  Text('DIVIED'),
                  Text("$sum4",
                    style: TextStyle(fontSize: 50, color: Colors.white,),
                  ),
                ],
              ),
                ],
              ),
             
              TextFormField(
                controller: firstNumberController,
                decoration: InputDecoration(
                  labelText: "Enter a number",
                  hintText: "eg. 23",
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                ),
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  RegExp regex = RegExp(r'\d$');
                  if (!regex.hasMatch(value!)) {
                   return 'Only numbers are allowed';
                  }
                },
              ),
              SizedBox(height: 16),
              TextField(
                controller: secondNumberController,
                decoration: InputDecoration(
                  labelText: "Enter another number",
                  hintText: "eg. 30",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstNumberController.text);
                  int num2 = int.parse(secondNumberController.text);
                  setState(() {
                    sum1 = num1 + num2;
                  });
                },
                child: Text("+"),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstNumberController.text);
                  int num2 = int.parse(secondNumberController.text);
                  setState(() {
                    sum5 = num1 - num2;
                  });
                },
                child: Text("-"),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstNumberController.text);
                  int num2 = int.parse(secondNumberController.text);
                  setState(() {
                    sum3 = num1 * num2;
                  });
                },
                child: Text("*"),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstNumberController.text);
                  int num2 = int.parse(secondNumberController.text);
                  setState(() {
                    sum4 = num1 / num2;
                  });
                },
                child: Text("/"),
              ),
              SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(firstNumberController.text);
                  int num2 = int.parse(secondNumberController.text);
                  setState(() {
                    sum4 = num1 / num2;
                  });
                },
                child: Text("C"),
              ),
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}