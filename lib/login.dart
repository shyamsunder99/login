import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff012E57),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assests/2 Login-2.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: SizedBox(
                        width: 300,
                        child: TextField(
                          style: GoogleFonts.roboto(fontSize: 20),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '  Mobile no '),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'otp');
                },
                child: Icon(Icons.arrow_forward),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfff0951f),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    )),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New User ?',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "signup");
                    },
                    child: Text(
                      'Sign up',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 20),
                    ))
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              child: Text(
                'By Signing Up.you agree to T&C',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
