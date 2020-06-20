import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pwqgencode.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String weak = generatePassword(true, true, true, true, 12);
  String rec = generatePassword(true, true, true, true, 15);
  String strong = generatePassword(true, true, true, true, 18);
  String easy = generatePassword(true, true, false, false, 16);

  List<String> comments = [
    'Just no',
    'This is so crap',
    'Come on, you will get it one day',
    "Don't give up yet, there is still some hope",
    "You: Passwords? What's that? I don't need that.",
    'A baby could probably guess this password',
    "Oh, you're done? Greattt. This is an amazinggg passwordd.",
    "My cat could jump on my keyboard and it would do a better job than yours", "Don't come crying back to me when you are hacked.",
    "I'm not mad, just disappointed.",
    "Its pretty good... I guess.",
    "So close yet actually nowhere near it. Your password so gargabe",
    "I'll give you an A for effort.",
    "Gotta say, you are about half way there.",
    "I worry about you",
    "You're kidding right?",
    "Smashing your head on the keyboard would do a better job.",
    "May god have mercy on your accounts.",
    "Worst. Password. Ever."
    ];
  String rancomment = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(176, 11, 65, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            weak = generatePassword(true, true, true, true, 12);
            rec = generatePassword(true, true, true, true, 15);
            strong = generatePassword(true, true, true, true, 18);
            easy = generatePassword(true, true, false, false, 16);
          });
        },
        child: Icon(Icons.refresh),
        backgroundColor: Colors.black,
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        title: Center(
          child: Column(
            children: <Widget>[
              GestureDetector(
                child: Icon(Icons.info),
                onTap: () {
                  Navigator.push(context, Pagetwo());
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(40, 40, 30, 0),
            child: Column(
              children: <Widget>[
                Image(image: AssetImage('assets/AyeLock.png')),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Weak:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '$weak',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: "$weak"));
                        },
                        child: Icon(Icons.link),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Recommend:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromRGBO(176, 11, 65, 1)
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '$rec',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: "$rec"));
                        },
                        child: Icon(Icons.link),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Strong:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '$strong',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: "$strong"));
                        },
                        child: Icon(Icons.link),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Easiest to read:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromRGBO(176, 11, 65, 1)
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '$easy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: "$easy"));
                        },
                        child: Icon(Icons.link),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 150),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '$rancomment',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Try out your old password!',
                        ),
                        obscureText: true,
                        onChanged: (String oldpass) {
                          setState(() {
                            rancomment = (comments.toList()..shuffle()).first;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Pagetwo extends MaterialPageRoute<Null> {
  Pagetwo() : super(builder: (BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(176, 11, 65, 1),
      appBar: AppBar(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35),
          ),
        ),
        title: Text(
            "Home",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 260,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'How It Works',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "In the background, there is around 50 lines of code (Dart) that takes all the letters in the English alphabet and randomly makes them captialized. While it's going that, it also sprinkles in numbers and symbols.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 260,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Why Is It All Random?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Well, the most common way for hackers to get a password is called a dictionary attack or brute force attack.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 260,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Dictionary And Brute Force Attacks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "How these attacks work is through programs made in different programming languages. The hacker will have a list of millions of common passwords people use. The hacker will encrytped the list of common passwords in the same way that the password they are looking for is. Once they find a password that matches with the when they are looking for when encrypted, they will know what that password is.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 260,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Why Did I Make This App?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "The reason why I made this app is beacuase I am 13 years old and was able to make my own program that does a dictionary attack. If a 13 year old (like myself), I think that anyone could do it.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(5, 4),
                      ),
                    ],
                  ),
                  width: 260,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Why You Should Actually Use These Passwords',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "If you use Google Chrome, you can see the passwords that autofill depending on which website it is used on. You would go to settings, search autofill and click on Passwords, and you will be able to see all of the passwords (by clicking the eye icon and putting in your password) that are used in different websites.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[800],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  });
}