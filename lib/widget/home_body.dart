import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hellllllo/constants/constants.dart';
import 'package:hellllllo/widget/search_view.dart';

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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchView()));
            },
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
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4f),
            size: 14,
          ),
        ),
        const Text('4.5', style: StyleText.style16),
        const SizedBox(width: 8),
        Opacity(
            opacity: .5,
            child: Text('(230)',
                style: StyleText.style14.copyWith(color: Colors.white))),
      ],
    );
  }
}
