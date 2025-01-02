library core;

// packages
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_arch_bookly_app/core/utils/constants/app_images.dart';
import 'package:clean_arch_bookly_app/features/search/index.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

// screens
import 'package:clean_arch_bookly_app/features/home/index.dart';
import 'package:clean_arch_bookly_app/features/splash/index.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
part './utils/shared/custome_book_image.dart';
part './utils/shared/books_list_view_loading_indicator.dart';
part './utils/shared/book_item_details_loading_indicator.dart';
part './utils/shared/rating_books_loading_indicator.dart';
part './utils/shared/rating_books.dart';

// functions
part './utils/functions/build_input_border.dart';
part './utils/functions/parse_to_book_model.dart';
part './utils/functions/save_books_data.dart';
part './utils/functions/setup_service_locator.dart';

// use case
part 'use_cases/use_case.dart';

// error
part './errors/failure.dart';

// services
part './utils/services/api_service.dart';
part './utils/services/simple_bloc_observer.dart';
