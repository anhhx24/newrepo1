
import 'package:flutter/material.dart';
class MyApp1 extends StatefulWidget {
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'EMP SALARY CALCULATOR',
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
    ),
    home: Mypage(),);
  }
}
class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController basicsalaryController = TextEditingController();
  double netsalary = 0.0;
  double da = 0.0;
  double hra = 0.0;
  double pf = 0.0;


  void calculateSalary() {
    double basicSalary = double.parse(basicsalaryController.text);

    setState(() {
      da = 0.12 * basicSalary;
      hra =0.07 * basicSalary;
      pf = 0.05 * basicSalary;
      netsalary = basicSalary + da + hra - pf ;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(" Employee Salary Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration:  InputDecoration(labelText: 'Employee name'),
        ),
        TextField(
          controller: designationController,
          decoration:  InputDecoration(labelText: 'Employee designation'),
        ),
        TextField(
          controller: basicsalaryController,
          decoration:  InputDecoration(labelText: 'Employee basic salary'),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: (){
         calculateSalary();
        },
    child: Text('calculate salary'),
    ),
          SizedBox(height: 16.0,),
        Text('name:   ${nameController.text}',
          style: TextStyle(fontSize: 16.0),),
        Text('designation:  ${designationController.text}',
        style: TextStyle(fontSize: 16.0),),
        Text('basicsalary:  ${basicsalaryController.text}',
        style: TextStyle(fontSize: 16.0)
        ),





        Text('netsalary:$netsalary' ,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,),

            ),
            Text('DA:$da' ,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,),

            ),
            Text('HRA:$hra' ,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,),

            ),
            Text('PF:$pf' ,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,),

            ),
          ],
        ),
      ),
    );
  }
}

