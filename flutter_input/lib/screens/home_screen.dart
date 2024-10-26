import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  var gender = '';
  var newsletter = false;
  var driver = false;
  var sum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('คำนวนรายจ่ายอย่างง่าย'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              buildTextField(),
              const SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () {
                    print(
                        'Name = ${nameController.text} ${surnameController.text}');
                    print('Gender : $gender');
                  },
                  child: const Text('บันทึก'))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField() => Column(
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'ราคาสินค้า'),
            maxLength: 50,
            keyboardType: TextInputType.name,
            controller: nameController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'นามสกุล'),
            maxLength: 50,
            keyboardType: TextInputType.name,
            controller: surnameController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'นามสกุล'),
            maxLength: 50,
            keyboardType: TextInputType.name,
            controller: surnameController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'นามสกุล'),
            maxLength: 50,
            keyboardType: TextInputType.name,
            controller: surnameController,
          ),
        ],
      );
}
