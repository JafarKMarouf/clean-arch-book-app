import 'package:clean_arch_bookly_app/core/index.dart';
import 'package:flutter/material.dart';

class PreviewBook extends StatefulWidget {
  const PreviewBook({super.key, required this.previewLink});
  final String? previewLink;

  @override
  State<PreviewBook> createState() => _PreviewBookState();
}

class _PreviewBookState extends State<PreviewBook> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomeButton(
        onPressed: () {},
        title: 'Free preview',
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        backgroundColor: const Color(0xFFEF8262),
        textStyle: AppStyles.styleBold16(context).copyWith(
          color: Colors.white,
          fontFamily: kGilroy,
        ),
      ),
    );
  }
}
