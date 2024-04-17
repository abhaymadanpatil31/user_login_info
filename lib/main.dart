import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";

class LoginPage extends InheritedWidget {
  final int password;
  final String userName;
  final String name;
  const LoginPage({
    super.key,
    required this.password,
    required this.name,
    required this.userName,
    required super.child,
  });

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
    return const LoginPage(
      password: 31,
      name: "Abhay",
      userName: "Abhay3110@",
      child: MaterialApp(
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
  @override
  Widget build(BuildContext context) {
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
          UserInput(),
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
          UserInput(),
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
          UserInput(),
          const SizedBox(
            height: 300,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Future<T?> push<T extends Object?>(
                    BuildContext context, Route<T> route) {
                  return Navigator.of(context).push(route);
                }
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

class UserInput extends StatefulWidget {
  const UserInput({super.key});
  @override
  State createState() {
    return _UserInputState();
  }
}

class _UserInputState extends State {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // hintText: "Enter the ${widget}",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
