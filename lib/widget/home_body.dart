import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hellllllo/constants/constants.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar();
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 70,
            width: 70,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4f),
            size: 20,
          ),
        ),
        // const SizedBox(
        // width: 2,
        // ),
        const Text('4.5', style: StyleText.style16),
        const SizedBox(width: 5),
        Text('(230)', style: StyleText.style14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
