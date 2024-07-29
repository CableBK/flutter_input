import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  var gender = '';
  var newsletter = false;
  var driver = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('คำนวนรายจ่ายอย่างง่าย'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () {
                    print(
                        'Name = ${nameController.text} ${surnameController.text}');
                    print('Gender : $gender');
                  },
                  child: Text('บันทึก'))
            ],
          ),
        ),
      ),
    );
  }
}
