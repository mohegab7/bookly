import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hellllllo/constants/constants.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';
import 'package:hellllllo/features/splach_view/presention/views/splach_view.dart';
import 'package:hive/hive.dart';

void main() async {
  runApp(const Splahview());
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(KFeaturedBox);
}

// ignore: camel_case_types
class Splahview extends StatelessWidget {
  const Splahview({super.key});

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
