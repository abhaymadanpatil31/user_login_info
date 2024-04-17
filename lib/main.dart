import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";
import 'UserInfo.dart';

class LoginPage extends InheritedWidget {
  int password;
  String userName;
  String name;
  LoginPage({
    super.key,
    required this.password,
    required this.name,
    required this.userName,
    required super.child,
  });

  set data(String data) {}

  static LoginPage of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LoginPage>()!;
  }

  @override
  bool updateShouldNotify(LoginPage oldWidget) {
    return password != oldWidget.password;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return LoginPage(
      password: 31,
      name: "Abhay",
      userName: "Abhay3110@",
      child: const MaterialApp(
        home: MainApp(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State createState() {
    return _MainAppState();
  }
}

class _MainAppState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    LoginPage obj1 = LoginPage.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Credentials",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(
            "Enter the Name",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              // hintText: "Enter the ${widget}",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Enter the UserName",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              // hintText: "Enter the ${widget}",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Enter the Password",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              // hintText: "Enter the ${widget}",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          GestureDetector(
            onTap: () {
              obj1.name = nameController.text;
              obj1.userName = usernameController.text;
              obj1.password = int.parse(passwordController.text);
              setState(() {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => UserInfo()));
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Text(
                "Submit",
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
    );
  }
}

// class UserInput extends StatefulWidget {
//   const UserInput({super.key});
//   @override
//   State createState() {
//     return _UserInputState();
//   }
// }

// class _UserInputState extends State {
//   TextEditingController userNameController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       decoration: InputDecoration(
//         // hintText: "Enter the ${widget}",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//   }
// }
