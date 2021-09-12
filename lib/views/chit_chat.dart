import 'package:flutter/material.dart';
import 'package:widget_basic/widgets/chat_list.dart';
import '../widgets/style.dart';
import '../widgets/scaffold_theme.dart';
import '../widgets/content_container.dart';

class ChitChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldTheme(
      title: 'Chit Chat',
      floatingActionButton: FloatingActionButton(
        backgroundColor: blueColor,
        child: Icon(
          Icons.chat,
        ),
        onPressed: () {},
      ),
      body: Column(
        children: [
          // header
          Image.asset(
            'assets/images/pp.png',
            height: 100,
            width: 100,
          ),

          SizedBox(height: 10),

          Text(
            'Hasyim',
            style: titleTextStyle,
          ),
          Text(
            'Just wannabe myself.',
            style: subtitleTextStyle,
          ),

          // main content
          SizedBox(height: 30),
          ContentContainer(
            children: [
              // friend messages
              Text(
                'Teman',
                style: titleListTextStyle,
              ),

              SizedBox(height: 16),

              ChatList(
                image: 'assets/images/fr1.png',
                title: 'Irene',
                subtitle: 'Hai, apa kabar kamu?',
                trailing: 'Sekarang',
              ),
              ChatList(
                image: 'assets/images/fr2.png',
                title: 'Steve',
                subtitle: 'Aku ada job untukmu',
                trailing: '14:35',
              ),
              ChatList(
                image: 'assets/images/fr3.png',
                title: 'Lia',
                subtitle: 'Baik, terima kasih.',
                trailing: '14:10',
              ),
              ChatList(
                image: 'assets/images/fr4.png',
                title: 'Michael',
                subtitle: 'Besok aku akan mampir',
                trailing: '10:15',
              ),

              SizedBox(height: 30),

              // group messages
              Text(
                'Grup',
                style: titleListTextStyle,
              ),

              SizedBox(height: 16),

              ChatList(
                image: 'assets/images/gr1.png',
                title: 'Alumni SMAN 2',
                subtitle: 'Kapan kita reuni?',
                trailing: '15:00',
              ),
              ChatList(
                image: 'assets/images/gr2.png',
                title: 'Bani Wachid',
                subtitle: 'Nanti malam makan2',
                trailing: '15:00',
              ),

              SizedBox(height: 30),
            ],
          ),
        ],
      ),
    );
  }
}
