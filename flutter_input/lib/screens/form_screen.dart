import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  var gender = '';
  var newsletter = false;
  var driver = false;
  var mary = false;
  var child = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('ลงทะเบียน'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              buildTextField(),
              buildRadio(),
              const SizedBox(height: 25),
              buildCheckbox(),
              buildSwitch(),
              ElevatedButton(
                  onPressed: () {
                    print(
                        'Name = ${nameController.text} ${surnameController.text}');
                    print('Gender : $gender');
                    print('newsletter = $newsletter');
                    print('driver = $driver');
                    print('mary = $mary');
                    print('child = $child');
                  },
                  child: const Text('บันทึก'))
            ],
          ),
        ),
      ),
    );
  }

  Column buildSwitch() => Column(
        children: [
          SwitchListTile(
            title: Text('แต่งงาน'),
            value: mary,
            onChanged: (value) => setState(() => mary = value),
          ),
          SwitchListTile(
            title: Text('มีบุตร'),
            value: child,
            onChanged: (value) => setState(() => child = value),
          ),
        ],
      );

  Widget buildCheckbox() => Column(
        children: [
          CheckboxListTile(
            title: const Text('สมัครรับจดหมายข่าว'),
            value: newsletter,
            onChanged: (value) => setState(() => newsletter = value ?? false),
          ),
          CheckboxListTile(
            title: const Text('ใบขับขี่รถยนต์'),
            value: driver,
            onChanged: (value) => setState(() => driver = value ?? false),
          ),
        ],
      );

  Widget buildRadio() => Column(
        children: [
          RadioListTile(
            tileColor: Colors.blue,
            title: const Text('ชาย'),
            value: 'male',
            groupValue: gender,
            onChanged: (value) => setState(() => gender = value.toString()),
          ),
          RadioListTile(
            tileColor: Colors.red,
            title: const Text('หญิง'),
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
            decoration: const InputDecoration(labelText: 'ชื่อ'),
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
        ],
      );
}
