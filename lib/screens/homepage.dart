import 'package:flutter/material.dart';
import '../components/category.dart';
import 'familymember_page.dart';
import 'numbers_page.dart';
import 'phrases_page.dart';
import 'colors_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'toku App',
          style: TextStyle(fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Spacer(flex: 1),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return  const NumbersPage();
                  }));
            },
            text: 'Numbers',
            color: Colors.deepOrangeAccent,
          ),
          const Spacer(flex: 1),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return  const FamilyMembers();
                  }));
            },
            
            text: 'FamilyMembers',
            color: Colors.green,
          ),
          const Spacer(flex: 1),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return  const ColorsPage();
                  }));
            },
            text: 'colors',
            color: Colors.purple,
          ),
          const Spacer(flex: 1),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return  const PhrasesPage();
                  }));
            },
            text: 'phrases',
            color: Colors.blueAccent,
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
