import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  var gender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text('ลงทะเบียน'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              buildTextField(),
              buildRadio(),
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

  Widget buildRadio() => Column(
        children: [
          RadioListTile(
            tileColor: Colors.blue,
            title: Text('ชาย'),
            value: 'male',
            groupValue: gender,
            onChanged: (value) => setState(() => gender = value.toString()),
          ),
          RadioListTile(
            tileColor: Colors.red,
            title: Text('หญิง'),
            value: 'female',
            groupValue: gender, //ได้แล้ว ใส่ gender เป็น สตริง เฉยย
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              }); //ลองทั้งสองแบบ แต่ไม่ยอมอัปเดต UI
            },
          ),
        ],
      );

  Widget buildTextField() => Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'ชื่อ'),
            maxLength: 50,
            keyboardType: TextInputType.name,
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'นามสกุล'),
            maxLength: 50,
            keyboardType: TextInputType.name,
            controller: surnameController,
          ),
        ],
      );
}
