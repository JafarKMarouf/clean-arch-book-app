part of '../../index.dart';

abstract class AppThemes {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.backgroundPrimaryColor,
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
  );
}
