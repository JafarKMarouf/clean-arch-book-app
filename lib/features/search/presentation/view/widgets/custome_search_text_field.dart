part of '../../../index.dart';

class CustomeSearchTextField extends StatelessWidget {
  const CustomeSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: buildInputBorder(Colors.white),
        enabledBorder: buildInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppImages.imagesSearch,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
