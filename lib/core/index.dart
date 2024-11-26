library core;

// packages
import 'package:clean_arch_bookly_app/core/errors/failure.dart';
import 'package:clean_arch_bookly_app/features/search/index.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// screens
import 'package:clean_arch_bookly_app/features/home/index.dart';
import 'package:clean_arch_bookly_app/features/splash/index.dart';

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

// use case
part 'use_cases/use_case.dart';

// services
part './utils/services/api_service.dart';
