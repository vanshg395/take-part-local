import 'package:flutter/material.dart';
import 'package:takepartlocal/widgets/comment_card.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'add_event_screen.dart';

import '../widgets/event_card.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          SliverAppBar(
            expandedHeight: 200,
            iconTheme: IconThemeData(color: Colors.white),
            leading: Material(
              color: Colors.transparent,
              child: IconButton(
                icon: WebsafeSvg.asset(
                  'assets/svg/back.svg',
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            title: Text(
              'Paint the House',
            ),
            centerTitle: true,
            pinned: true,
            backgroundColor: Color(0xFF195587),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: <Widget>[
                  Container(
                    height: 400,
                    width: double.infinity,
                    // child: CachedNetworkImage(
                    //   imageUrl: Provider.of<Auth>(context).baseUrl +
                    //       widget.communityInfo.thumbnail.substring(1),
                    //   fit: BoxFit.cover,
                    //   progressIndicatorBuilder: (context, _, progress) =>
                    //       Center(
                    //     child: CircularProgressIndicator(
                    //       valueColor: AlwaysStoppedAnimation(
                    //         Theme.of(context).primaryColor,
                    //       ),
                    //       value: progress.progress,
                    //     ),
                    //   ),
                    //   errorWidget: (context, url, error) => Icon(
                    //     Icons.error,
                    //     color: Colors.grey,
                    //     size: 60,
                    //   ),
                    // ),
                    child: Image.asset(
                      'assets/img/sample2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    color: Color(0x88000000),
                  ),
                ],
              ),
              stretchModes: [
                StretchMode.zoomBackground,
              ],
            ),
          ),
        ],
        body: Container(
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
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/img/sample.jpg'),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 32,
                                    color: Color.fromARGB(60, 17, 17, 17),
                                  ),
                                ],
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              ),
                              child: Text(
                                  'Laborum velit irure sit consectetur sit laborum veniam dolore sit enim ullamco quis exercitation. Pariatur laborum reprehenderit esse qui officia occaecat. Duis mollit deserunt amet velit laborum voluptate.'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Start',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF999999),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '09/21/2021',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 1,
                        color: Color(0xFF999999),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'End',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF999999),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '09/22/2021',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 16,
                              offset: Offset(0, 10),
                              color: Color(0xFF195587).withOpacity(0.2),
                            ),
                          ],
                          border: Border.all(
                            color: Color(0xFF195587),
                            width: 2,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xFF195587),
                            fontSize: 17,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 16,
                              offset: Offset(0, 10),
                              color: Color(0xFF195587).withOpacity(0.2),
                            ),
                          ],
                          border: Border.all(
                            color: Color(0xFF195587),
                            width: 2,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Delete',
                          style: TextStyle(
                            color: Color(0xFF195587),
                            fontSize: 17,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700,
                          ),
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
                  child: Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 90,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  color: Color(0xFFF5FAFA),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/img/map.png',
                        height: 60,
                        fit: BoxFit.cover,
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
                              '1890 Greenbrier Ln. Suite 200',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Text(
                              'Mooresville, NV 2501',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 34,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Participants ( 3 / 5 )',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/img/sample.jpg'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/img/sample.jpg'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/img/sample.jpg'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF195587),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF195587),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF195587),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Color(0xFF195587),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Comments',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommentCard(
                        'John Doe',
                        'Ullamco aliquip id magna dolor minim. Tempor ut nulla exercitation ipsum magna ex anim excepteur ad elit.',
                        AssetImage('assets/img/sample.jpg'),
                      ),
                      CommentCard(
                        'John Doe',
                        'Ullamco aliquip id magna dolor minim. Tempor ut nulla exercitation ipsum magna ex anim excepteur ad elit. Cillum aute ullamco dolore aliquip nulla nostrud esse dolore est et.',
                        AssetImage('assets/img/sample.jpg'),
                      ),
                      CommentCard(
                        'John Doe',
                        'Ullamco aliquip id magna dolor minim. Tempor ut nulla exercitation ipsum magna ex anim excepteur ad elit.',
                        AssetImage('assets/img/sample.jpg'),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Show All Comments',
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Color(0xFFEEEEEE),
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Color(0xFFEEEEEE),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Color(0xFFEEEEEE),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Color(0xFFEEEEEE),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Color(0xFFEEEEEE),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          color: Color(0xFFEEEEEE),
                        ),
                      ),
                      suffixIcon: Container(
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF195587),
                        ),
                        child: WebsafeSvg.asset(
                          'assets/svg/send.svg',
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0xFFEEEEEE),
                      hintText: 'Add a Comment ...',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
