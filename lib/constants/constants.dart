import 'package:flutter/material.dart';

class AssetData {
  static const logo = 'assets/images/Logo.png';
  static const test = 'assets/images/test.webp';
}

abstract class StyleText {
  static const style20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static const style30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontFamily: kGtSectrafine,
  );
  static const style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const style18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontStyle: FontStyle.italic,
  );
  static const style14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontFamily: '',
  );
}

const kduration = Duration(milliseconds: 500);
const kGtSectrafine = 'GT Sectra Fine';
const KFeaturedBox = 'kfeatured_box';
const KNewestBox = 'KNewest_box';
