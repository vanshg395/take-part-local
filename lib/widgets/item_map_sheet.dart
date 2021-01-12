import 'package:flutter/material.dart';
import 'package:takepartlocal/screens/project_screen.dart';

class ItemMapSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/img/sample2.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 16,
                        color: Color.fromARGB(80, 30, 30, 30),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'PROJECT',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            letterSpacing: 1,
                            color: Color(0xFFB2C2DB),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Build a House',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            child: Text(
              'OWNER',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                letterSpacing: 1,
                color: Color(0xFFB2C2DB),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'fun82',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 1,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            child: Text(
              'ADDRESS',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                letterSpacing: 1,
                color: Color(0xFFB2C2DB),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1890 Greenbrier Ln. Suite 200',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Mooresville, NV 2501',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF195587),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                'Project Details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => ProjectScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
