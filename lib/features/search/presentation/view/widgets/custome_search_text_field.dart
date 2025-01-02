import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/index.dart';
import '../../../../../core/utils/constants/app_images.dart';
import '../../../index.dart';

class CustomeSearchTextField extends StatefulWidget {
  const CustomeSearchTextField({super.key});

  @override
  State<CustomeSearchTextField> createState() => _CustomeSearchTextFieldState();
}

class _CustomeSearchTextFieldState extends State<CustomeSearchTextField> {
  var cubit = BlocProvider.of<SearchBookCubit>;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Timer? _debounce;
  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(
      const Duration(milliseconds: 400),
      () {
        if (formKey.currentState!.validate()) {
          cubit(context).fetchSearchBooks(
            title: cubit(context).searchController.text,
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    cubit(context).searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        controller: cubit(context).searchController,
        validator: (value) {
          if (value!.isEmpty) {
            return "This field is required";
          }
          return null;
        },
        onChanged: _onSearchChanged,
        onFieldSubmitted: (value) {
          if (formKey.currentState!.validate()) {
            BlocProvider.of<SearchBookCubit>(context).fetchSearchBooks(
              title: cubit(context).searchController.text,
            );
          }
        },
        decoration: InputDecoration(
          border: buildInputBorder(),
          focusedBorder: buildInputBorder(Colors.white),
          enabledBorder: buildInputBorder(),
          hintText: 'write any keyword for search...',
          prefixIcon: IconButton(
            onPressed: () {
              cubit(context).searchController.clear();
            },
            icon: const Icon(Icons.close),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<SearchBookCubit>(context).fetchSearchBooks(
                  title: cubit(context).searchController.text,
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
