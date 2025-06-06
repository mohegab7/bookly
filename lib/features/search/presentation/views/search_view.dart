import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hellllllo/Features/search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon:const Icon(
        //       Icons.close,
        //       size: 30,
        //       color: Colors.white,
        //     )),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: CustomSearchTextField(),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        SearchResultListView(),
      ],
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      style: const TextStyle(color: Colors.amber, fontSize: 20),
      textAlign: TextAlign.start,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          // prefixIcon: Icon(Icons.abc),
          hintText: 'search',
          hintStyle: const TextStyle(color: Colors.white, fontSize: 20),
          suffixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
          suffixIconColor: Colors.amber),
    );
  }
}


