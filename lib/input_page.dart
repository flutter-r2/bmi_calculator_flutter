import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: BMICard(Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: BMICard(Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          const Expanded(
            child: BMICard(Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: BMICard(Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: BMICard(Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BMICard extends StatelessWidget {
  final Color color;

  // ignore: use_key_in_widget_constructors
  const BMICard(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}