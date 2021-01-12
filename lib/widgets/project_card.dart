import 'package:flutter/material.dart';

import '../screens/project_screen.dart';

class ProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 260,
        margin: EdgeInsets.only(
          top: 20,
          bottom: 30,
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 16),
              blurRadius: 32,
              color: Color.fromARGB(15, 17, 17, 17),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                image: DecorationImage(
                  image: AssetImage('assets/img/sample2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Build a House',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          'Nostrud esse Lorem deserunt officia. Sit cupidatat ad ut aute incididunt esse fugiat eiusmod in sit.',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/img/sample.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => ProjectScreen(),
        ),
      ),
    );
  }
}
