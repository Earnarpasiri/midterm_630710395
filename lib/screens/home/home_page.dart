import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '630710395';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text('Question 30 of 30',
                    style: TextStyle(fontSize: 15.0)),
              ),
              Spacer(),
              _buildQuizView(),
              Spacer(),
              _buildButtonPanel(),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }


  _buildQuizView() {
    Container(
    padding: const EdgeInsets.symmetric(
    horizontal: 50.0, vertical: 10.0),
    margin: const EdgeInsets.all(15.0),
    decoration: BoxDecoration(color: Colors.teal,
    border: Border.all(
    color: Colors.black, style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(30.0)),
    child: Text('What is the longest river in the world?',
    style: TextStyle(color: Colors.white)),
    );

    return Center(
        child: Text('What is the longest river in the world?'));

  }

  _buildButtonPanel() {
    // TODO: build UI
    return Center(child: Text('TODO: build UI'));
  }
}