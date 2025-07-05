import 'package:flutter/material.dart';
import 'package:hellllllo/constants/constants.dart';
import 'package:hellllllo/core/widget/home_body.dart';
import 'package:hellllllo/core/widget/home_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var heigh = MediaQuery.of(context).size.height;
    var widh = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Scaffold(
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
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  const BookRating(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),

                  const BookAction(),
                 const Expanded(
                    child: const SizedBox(
                      height: 50,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.9, 2),
                    // alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: StyleText.style14
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: similarBookListView(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
    // ignore: dead_code
    return Padding(
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
          // const SizedBox(
          //   height: 5,
          // ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),

          const BookAction(),
          Expanded(
            child: const SizedBox(
              height: 50,
            ),
          ),
          Align(
            alignment: Alignment(-0.9, 2),
            // alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: StyleText.style14.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: similarBookListView(),
          ),
        ],
      ),
    );
  }
}

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.red,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
          ),
        ],
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

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 48,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(10))),
              onPressed: () {},
              child: Text(
                '19.99 €',
                style: StyleText.style16.copyWith(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class similarBookListView extends StatelessWidget {
  const similarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemBuilder: (index, context) => const CustomBookImage(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
