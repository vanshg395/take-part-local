import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:websafe_svg/websafe_svg.dart';

import './login_screen.dart';
import './add_project_screen.dart';
import '../widgets/project_card.dart';
import '../widgets/event_card.dart';
import '../providers/auth.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Future<void> _logout() async {
    await Provider.of<Auth>(context, listen: false).logout();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          WebsafeSvg.asset(
            'assets/svg/bg2.svg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            child: SafeArea(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/img/sample.jpg'),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hello, ${Provider.of<Auth>(context).fname + ' ' + Provider.of<Auth>(context).lname}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  GestureDetector(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.logout,
                                          color: Color(0xFF195587),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Logout',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            letterSpacing: 0.5,
                                            color: Color(0xFF195587),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onTap: _logout,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Text(
                              'Your Projects',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF195587),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => AddProjectScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 260,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            ProjectCard(),
                            ProjectCard(),
                            ProjectCard(),
                            ProjectCard(),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Followed Projects',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        height: 260,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            ProjectCard(),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Your Events',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        height: 260,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            EventCard(),
                            EventCard(),
                            EventCard(),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Followed Events',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        // height: 260,
                        width: double.infinity,
                        // child: ListView(
                        //   scrollDirection: Axis.horizontal,
                        // physics: BouncingScrollPhysics(),
                        //   children: [
                        //     SizedBox(
                        //       width: 10,
                        //     ),
                        //     SizedBox(
                        //       width: 10,
                        //     ),
                        //   ],
                        // ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'You are not follow any event yet',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
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
