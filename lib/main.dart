import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import './screens/loading_screen.dart';
import './screens/login_screen.dart';
import './screens/tabs_screen.dart';
import './providers/auth.dart';
import './providers/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
            value: Auth(),
          ),
          ChangeNotifierProvider.value(
            value: Profile(),
          ),
        ],
        child: Consumer<Auth>(
          builder: (ctx, auth, _) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Take Part Local',
            theme: ThemeData(
              fontFamily: GoogleFonts.lato().fontFamily,
              appBarTheme: AppBarTheme(
                color: Color(0xFF195587),
              ),
            ),
            home: auth.isAuth
                ? TabsScreen()
                : FutureBuilder(
                    future: auth.tryAutoLogin(),
                    builder: (ctx, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return LoadingScreen();
                      } else {
                        if (snapshot.data) {
                          return TabsScreen();
                        } else {
                          return LoginScreen();
                        }
                      }
                    },
                  ),
          ),
        ));
  }
}
