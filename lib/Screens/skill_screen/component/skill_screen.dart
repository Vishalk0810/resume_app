import 'package:flutter/material.dart';
import 'package:resume_app/utils/colors.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

var txtSkills = TextEditingController();

class _SkillScreenState extends State<SkillScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          shadowColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'SKILLS SET',
            style: TextStyle(
                color: Color(0xff486a93),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  'What skills do you want to add?',
                  style: TextStyle(
                    color: Color(0xff012D6c),
                    fontSize: 26,
                    height: 1.33,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'To speed things up, consider using our pre-written example.',
                  style: TextStyle(
                    color: Color(0xff012D6c),
                    fontSize: 19,
                    height: 1.33,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                  height: 20,
                  indent: 1,
                  color: MyBlue,
                ),
                SizedBox(
                  height: 200,
                  width: 400,
                  child: TextFormField(
                    controller: txtSkills,
                    cursorColor: Colors.teal,
                    maxLines: 10,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Divider(
                  thickness: 2,
                  color: MyBlue,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.list,
                      size: 35,
                      color: Color(0xff012D6c),
                    ),
                    Icon(
                      Icons.format_bold,
                      size: 35,
                      color: Color(0xff012D6c),
                    ),
                    Icon(
                      Icons.format_italic_sharp,
                      size: 35,
                      color: Color(0xff012D6c),
                    ),
                    Icon(
                      Icons.format_underlined_outlined,
                      size: 35,
                      color: Color(0xff012D6c),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/pdf');
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: height * 0.07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Divider(
                  thickness: 2,
                  color: MyBlue,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 0.36,
                  width: 0.4,
                  decoration: const BoxDecoration(
                    color: Color(
                      0xffFFF7F1,
                    ),
                  ),
                  //
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'EXAMPLE FROM OUR EXPERTS',
                          style: TextStyle(
                            color: Color(0xff124076),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_drop_down_circle,
                          color: MyBlue,
                          size: 27,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                skillsUi(text: 'Marketing'),
                SizedBox(
                  height: height * 0.015,
                ),
                skillsUi(text: 'Communication skills'),
                SizedBox(
                  height: height * 0.015,
                ),
                skillsUi(text: 'Management'),
                SizedBox(
                  height: height * 0.015,
                ),
                skillsUi(text: 'Problem-solving'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding skillsUi({required String text, required}) {
    return Padding(
      padding: const EdgeInsets.only(right: 55),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              const Icon(
                Icons.add_circle_rounded,
                size: 30,
                color: Color(0xff012D6c),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Color(0xff012D6c),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
