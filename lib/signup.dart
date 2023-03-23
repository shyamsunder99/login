import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff012E57),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'SignUp',
                style: TextStyle(fontSize: 55, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Column(
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
                              hintText: ' Username ',
                              icon: Icon(Icons.person)),
                        ),
                      ),
                    ),
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
                              hintText: ' Mobile no ',
                              icon: Icon(
                                IconData(0xe081, fontFamily: 'MaterialIcons'),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
