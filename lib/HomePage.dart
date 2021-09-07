import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222831),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF323EDD),
        child: Icon(
          Icons.chat,
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text(
          'Chit Chat',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFFFFFFFF),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // header
                Image.asset(
                  'assets/images/pp.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Hasyim',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                Text(
                  'Just wannabe myself.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9D9D9D),
                  ),
                ),

                // main content
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Color(0xFF393E46),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // friend messages
                      Text(
                        'Teman',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),

                      ListTile(
                        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                        leading: Image.asset(
                          'assets/images/fr1.png',
                          width: 55,
                          height: 55,
                        ),
                        title: Text(
                          'Irene',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          'Hai, apa kabar kamu?',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        trailing: Text(
                          'Sekarang',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                        leading: Image.asset(
                          'assets/images/fr2.png',
                          width: 55,
                          height: 55,
                        ),
                        title: Text(
                          'Steve',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          'Aku ada job untukmu',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        trailing: Text(
                          '14:35',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                        leading: Image.asset(
                          'assets/images/fr3.png',
                          width: 55,
                          height: 55,
                        ),
                        title: Text(
                          'Lia',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          'Baik, terima kasih.',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        trailing: Text(
                          '14:10',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                        leading: Image.asset(
                          'assets/images/fr4.png',
                          width: 55,
                          height: 55,
                        ),
                        title: Text(
                          'Michael',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          'Besok aku akan mampir..',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        trailing: Text(
                          '10:15',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),

                      // group messages
                      Text(
                        'Grup',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                        leading: Image.asset(
                          'assets/images/gr1.png',
                          width: 55,
                          height: 55,
                        ),
                        title: Text(
                          'Alumni SMAN 2',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          'Kapan kita reuni?',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        trailing: Text(
                          '15:00',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                        leading: Image.asset(
                          'assets/images/gr2.png',
                          width: 55,
                          height: 55,
                        ),
                        title: Text(
                          'Bani Wachid',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          'Nanti malam makan2',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                        trailing: Text(
                          '11:22',
                          style: TextStyle(
                            color: Color(0xFFB2B1B9),
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
