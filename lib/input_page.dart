import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bmi_card.dart';
import 'gender_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  Color updateGenderCardsColor(Gender gender) {
    return selectedGender == gender ? activeCardColor : inactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: BMICard(
                    tap: () => setState(() => selectedGender = Gender.male),
                    color: updateGenderCardsColor(Gender.male),
                    child: const GenderContent(
                      genderIcon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: BMICard(
                    tap: () => setState(() => selectedGender = Gender.female),
                    color: updateGenderCardsColor(Gender.female),
                    child: const GenderContent(
                      genderIcon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: BMICard(color: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: BMICard(color: activeCardColor),
                ),
                Expanded(
                  child: BMICard(color: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
