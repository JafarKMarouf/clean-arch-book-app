part of '../../index.dart';

abstract class AppStyles {
  static TextStyle styleRegular14(context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle styleMedium14(context) {
    return const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium16(context) {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleBold16(context) {
    return const TextStyle(
      fontFamily: 'Gilroy-Bold',
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold18(context) {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle styleRegular20(context) {
    return const TextStyle(
      fontFamily: 'GTSectra Fine-Regular',
      fontSize: 20,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle styleBold20(context) {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}
