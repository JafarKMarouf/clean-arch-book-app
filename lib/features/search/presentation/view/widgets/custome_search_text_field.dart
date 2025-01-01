// part of '../../../index.dart';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/index.dart';
import '../../../../../core/utils/constants/app_images.dart';
import '../../../index.dart';

class CustomeSearchTextField extends StatefulWidget {
  const CustomeSearchTextField({
    super.key,
  });

  @override
  State<CustomeSearchTextField> createState() => _CustomeSearchTextFieldState();
}

class _CustomeSearchTextFieldState extends State<CustomeSearchTextField> {
  final textEditingController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        controller: textEditingController,
        validator: (value) {
          if (value!.isEmpty) {
            return "هذا الحقل مطلوب";
          }
          return null;
        },
        onChanged: (value) {
          log('+++++++on change value:$value+++++');
          if (formKey.currentState!.validate()) {
            BlocProvider.of<SearchBookCubit>(context)
                .fetchSearchBooks(title: value);
          }
        },
        onFieldSubmitted: (value) {
          log('+++++++on submit value:$value+++++');
          if (formKey.currentState!.validate()) {
            BlocProvider.of<SearchBookCubit>(context)
                .fetchSearchBooks(title: value);
          }
        },
        decoration: InputDecoration(
          focusedBorder: buildInputBorder(Colors.white),
          enabledBorder: buildInputBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<SearchBookCubit>(context).fetchSearchBooks(
                  title: textEditingController.text,
                );
              }
            },
            icon: SvgPicture.asset(
              AppImages.imagesSearch,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
