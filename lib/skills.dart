import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";
import "package:user_login_info/main.dart";

class Skills extends StatefulWidget {
  const Skills({super.key});
  @override
  State createState() {
    return _SkillsState();
  }
}

class _SkillsState extends State {
  TextEditingController skillsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    LoginPage obj3 = LoginPage.of(context);
    List info = [
      skillsController,
    ];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Skills ",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 90,
          ),
          TextField(
            controller: skillsController,
            focusNode: FocusNode(),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Enter Skills"),
          ),
          const SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: (() {
              setState(() {
                Container(
                  height: 200,
                  width: 200,
                  child: Text("$skillsController"),
                );
              });
            }),
            child: Text(
              "Add Skills",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: info.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: Text("$info"),
              );
            },
          ),
        ],
      ),
    );
  }
}
