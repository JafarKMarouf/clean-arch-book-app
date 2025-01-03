// part of '../../../index.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/index.dart';

class BookActions extends StatefulWidget {
  const BookActions({
    super.key,
    required this.previewLink,
    required this.price,
  });
  final String? previewLink;
  final num? price;

  @override
  State<BookActions> createState() => _BookActionsState();
}

class _BookActionsState extends State<BookActions> {
  Future<void> launchInWebView(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Uri previewLink = Uri.parse(widget.previewLink!);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomeButton(
              onPressed: () {},
              title: widget.price == 0 ? 'Free' : '${widget.price}',
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomeButton(
              onPressed: () async {
                // setState(() {});
                await launchInWebView(previewLink);
              },
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
          )
        ],
      ),
    );
  }
}
