import 'package:flutter/material.dart';
import 'package:hellllllo/constants/constants.dart';
import 'package:hellllllo/core/widget/details_book.dart';
import 'package:hellllllo/core/widget/home_body.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeBody(),
            // CustomListView(),
            ListPhoto(),
            SizedBox(height: 10),
            Text('Best seller', style: StyleText.style30),
            SizedBox(height: 10),
            BestSellerItemList(),
          ],
        ),
      ),
    );
  }
}

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          // height: MediaQuery.of(context).size.height * .25,
          // width: MediaQuery.of(context).size.width * .25,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AssetData.test),
            ),
          ),
        ),
      ),
    );
  }
}

class ListPhoto extends StatelessWidget {
  const ListPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemBuilder: (index, context) => const CustomBookImage(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const BookDetailsViewBody()));
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                // height: MediaQuery.of(context).size.height * .25,
                // width: MediaQuery.of(context).size.width * .25,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(AssetData.test),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'harry potter and  the  Golblet of fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    // textAlign: TextAlign.start,
                    style: StyleText.style20.copyWith(
                      fontFamily: kGtSectrafine,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'j.k Rowing',
                    textAlign: TextAlign.start,
                    style: StyleText.style14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "19.99 €",
                          style: StyleText.style14.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const BookRating()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerItemList extends StatelessWidget {
  const BestSellerItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(0),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BestSeller(),
          );
        },
        scrollDirection: Axis.vertical,
        itemCount: 10,
      ),
    );
  }
}
