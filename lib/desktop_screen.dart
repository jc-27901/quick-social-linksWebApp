import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopLayoutScreen extends StatefulWidget {
  static const kColor = Colors.white;

  @override
  _DesktopLayoutScreenState createState() => _DesktopLayoutScreenState();
}

class _DesktopLayoutScreenState extends State<DesktopLayoutScreen> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  bool isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: DayNightSwitcher(
            isDarkModeEnabled: isDarkModeEnabled,
            onStateChanged: (bool isDarkModeEnabled) {
              setState(() {
                this.isDarkModeEnabled = isDarkModeEnabled;
                print(isDarkModeEnabled);
              });
            },
          ),
        ),
        // backgroundColor: isDarkModeEnabled ? Color(0xff07111A) : Colors.white,
        body: isDarkModeEnabled ? DarkContainer() : Ligthontainer(),
      ),
    );
  }
}

class Ligthontainer extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static const k1Color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/profile1.JPG'),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Jay Chhatrola',
                  style: TextStyle(
                      fontSize: 22,
                      color: k1Color,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Center(
                child: Text(
                  'This is a quick website built in flutter💙\n         All my official links are here!🙌',
                  style: TextStyle(fontSize: 18, color: k1Color),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  print('hello');
                  _launchURL(
                      'https://www.youtube.com/channel/UCe5AR9epHWDgDtH38VmQjPw');
                },
                child: Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(15)),
                  //   color: Colors.white.withOpacity(0.15),
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 8.0,
                        offset: Offset(1.0, 5.0),
                      ),
                    ],
                  ),
                  height: 100,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          size: 50,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          'Here\'s my YouTube\nchannel!',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20, color: k1Color),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print('hello');
                  _launchURL('https://github.com/jc-27901');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 8.0,
                        offset: Offset(1.0, 5.0),
                      ),
                    ],
                  ),
                  height: 100,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Icon(
                          FontAwesomeIcons.github,
                          size: 50,
                          color: k1Color,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          'GitHub profile',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20, color: k1Color),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print('hello');
                  _launchURL(
                      'https://www.linkedin.com/in/jay-chhatrola-974844192/');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 8.0,
                        offset: Offset(1.0, 5.0),
                      ),
                    ],
                  ),
                  height: 100,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          'LinkedIn profile',
                          style: TextStyle(fontSize: 20, color: k1Color),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print('hello');
                  _launchURL('https://twitter.com/Jay87642856?s=09');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 8.0,
                        offset: Offset(1.0, 5.0),
                      ),
                    ],
                  ),
                  height: 100,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Icon(
                          FontAwesomeIcons.twitter,
                          size: 50,
                          color: Color(0xff1DA1F2),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          'I\'m on Twitter!',
                          style: TextStyle(fontSize: 20, color: k1Color),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print('hello');
                  _launchURL(
                      'https://github.com/jc-27901/indian_recipe_app-Flutter/releases/download/RecipeBook/RecipeBook_2021vasu.dev.final_recipe_appv1.0.0.apk');
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 8.0,
                        offset: Offset(1.0, 5.0),
                      ),
                    ],
                  ),
                  height: 100,
                  width: 300,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Container(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              'assets/project.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          'Recent Project',
                          style: TextStyle(fontSize: 20, color: k1Color),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                  onPressed: () {
                    print('hello');
                    _launchURL(
                        'https://instagram.com/jc_27901?utm_medium=copy_link');
                  },
                  child: Text(
                    'Instagram Profile',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class DarkContainer extends StatelessWidget {
  const DarkContainer({
    Key key,
  }) : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff07111A),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/profile1.JPG'),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Jay Chhatrola',
                    style: TextStyle(
                        fontSize: 22,
                        color: DesktopLayoutScreen.kColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Center(
                  child: Text(
                    'This is a quick website built in flutter💙\n         All my official links are here!🙌',
                    style: TextStyle(
                        fontSize: 18, color: DesktopLayoutScreen.kColor),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    print('hello');
                    _launchURL(
                        'https://www.youtube.com/channel/UCe5AR9epHWDgDtH38VmQjPw');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white.withOpacity(0.15),
                    ),
                    height: 100,
                    width: 300,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            FontAwesomeIcons.youtube,
                            size: 50,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text(
                            'Here\'s my YouTube\nchannel!',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                color: DesktopLayoutScreen.kColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    print('hello');
                    _launchURL('https://github.com/jc-27901');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white.withOpacity(0.15),
                    ),
                    height: 100,
                    width: 300,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            FontAwesomeIcons.github,
                            size: 50,
                            color: DesktopLayoutScreen.kColor,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text(
                            'GitHub profile',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20,
                                color: DesktopLayoutScreen.kColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    print('hello');
                    _launchURL(
                        'https://www.linkedin.com/in/jay-chhatrola-974844192/');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white.withOpacity(0.15),
                    ),
                    height: 100,
                    width: 300,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            FontAwesomeIcons.linkedin,
                            size: 50,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text(
                            'LinkedIn profile',
                            style: TextStyle(
                                fontSize: 20,
                                color: DesktopLayoutScreen.kColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    print('hello');
                    _launchURL(
                        'https://www.linkedin.com/in/jay-chhatrola-974844192/');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white.withOpacity(0.15),
                    ),
                    height: 100,
                    width: 300,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            size: 50,
                            color: Color(0xff1DA1F2),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text(
                            'I\'m on Twitter!',
                            style: TextStyle(
                                fontSize: 20,
                                color: DesktopLayoutScreen.kColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    print('hello');
                    _launchURL(
                        'https://github.com/jc-27901/indian_recipe_app-Flutter/releases/download/RecipeBook/RecipeBook_2021vasu.dev.final_recipe_appv1.0.0.apk');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white.withOpacity(0.15),
                    ),
                    height: 100,
                    width: 300,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Container(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/project.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Text(
                            'Recent Project',
                            style: TextStyle(
                                fontSize: 20,
                                color: DesktopLayoutScreen.kColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                    onPressed: () {
                      print('hello');
                      _launchURL(
                          'https://instagram.com/jc_27901?utm_medium=copy_link');
                    },
                    child: Text(
                      'Instagram Profile',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
