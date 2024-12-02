library core;

// packages
import 'package:clean_arch_bookly_app/core/errors/failure.dart';
import 'package:clean_arch_bookly_app/features/search/index.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

// screens
import 'package:clean_arch_bookly_app/features/home/index.dart';
import 'package:clean_arch_bookly_app/features/splash/index.dart';
import 'package:hive_flutter/hive_flutter.dart';

// constants
part 'utils/constants/app_colors.dart';
part 'utils/constants/app_styles.dart';
part 'utils/constants/app_themes.dart';
part 'utils/constants.dart';

// config
part './config/routes/app_routes.dart';
part './config/routes/app_pages.dart';

// shared widgets
part './utils/shared/custome_button.dart';

// functions
part './utils/functions/build_input_border.dart';
part './utils/functions/parse_to_book_model.dart';
part './utils/functions/save_books_data.dart';
part './utils/functions/setup_service_locator.dart';

// use case
part 'use_cases/use_case.dart';

// services
part './utils/services/api_service.dart';
part './utils/services/simple_bloc_observer.dart';
