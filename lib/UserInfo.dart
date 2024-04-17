import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

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
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              "Name of the User",
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "UserName of the User",
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Password of the User",
              style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
              child: Text( 
                "Add Skills"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
