import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hellllllo/widget/splach_view.dart';

void main() {
  runApp(const splahview());
}

// ignore: camel_case_types
class splahview extends StatelessWidget {
  const splahview({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const splash_view(),
      // routerConfig: _router,
      theme: ThemeData().copyWith(
          scaffoldBackgroundColor: const Color(0xff100b20),
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}

// final GoRouter _router = GoRouter(
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const splahview(),
//     ),
//   ],
// );
