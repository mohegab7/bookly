import 'package:flutter/material.dart';
import 'package:hellllllo/constants/constants.dart';
import 'package:hellllllo/widget/home_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    var widh = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: heigh * .02),
        child: Column(
          children: [
            // SafeArea(
            const CustomBookAppBarDetails(),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: widh * .26),
              child: const CustomBookImage(),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'The Jungle Book',
              style: StyleText.style30,
            ),
            const Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: StyleText.style18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBookAppBarDetails extends StatelessWidget {
  const CustomBookAppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
            color: Colors.white,
          ),
          // Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
