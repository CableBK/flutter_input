import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
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
        title: Text('ลงทะเบียน'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              buildTextField(),
              buildRadio(),
              SizedBox(height: 25),
              buildCheckbox(),
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

  Widget buildCheckbox() => Column(
        children: [
          CheckboxListTile(
            title: Text('สมัครรับจดหมายข่าว'),
            value: newsletter,
            onChanged: null,
          ),
          CheckboxListTile(
            title: Text('ใบขับขี่รถยนต์'),
            value: driver,
            onChanged: null,
          ),
        ],
      );

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
          TextField(
            decoration: InputDecoration(labelText: 'นามสกุล'),
            maxLength: 50,
            keyboardType: TextInputType.name,
            controller: surnameController,
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
