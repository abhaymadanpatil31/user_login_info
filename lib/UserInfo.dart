import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:user_login_info/main.dart";
import "package:user_login_info/skills.dart";

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});
  @override
  State createState() {
    return _UserInfoState();
  }
}

class _UserInfoState extends State {
  @override
  Widget build(BuildContext context) {
    LoginPage obj2 = LoginPage.of(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Text(
                "Name of the User",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Text(
              obj2.name,
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Text(
                "UserName",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Text(
              obj2.userName,
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Text(
                "Password of the User",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Text(
              "${obj2.password}",
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Skills()));
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: Text(
                  "Add Skills",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
