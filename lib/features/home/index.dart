library home;

import 'package:clean_arch_bookly_app/features/home/presentation/view/widgets/featured_books_list_view_bloc_consumer.dart';
import 'package:flutter/material.dart';

// packages
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_arch_bookly_app/core/index.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// constants
import 'package:clean_arch_bookly_app/core/utils/constants/app_images.dart';

// import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/adapters.dart';

// =============================================

// presentation layer
// screens
part './presentation/view/home_view.dart';
part './presentation/view/book_details_view.dart';

// components
part './presentation/view/widgets/home_view_body.dart';
part './presentation/view/widgets/custome_home_app_bar.dart';
part './presentation/view/widgets/custome_book_image.dart';
// part 'presentation/view/widgets/featured_books_list_view.dart';
part './presentation/view/widgets/book_list_view_item.dart';
part './presentation/view/widgets/rating_books.dart';
part './presentation/view/widgets/book_item_details.dart';
part './presentation/view/widgets/best_seller_list_view.dart';
part './presentation/view/widgets/book_details_view_body.dart';
part './presentation/view/widgets/custome_book_details_app_bar.dart';
part './presentation/view/widgets/book_actions.dart';
part './presentation/view/widgets/infos_book_details.dart';
part './presentation/view/widgets/similar_books_list_view.dart';
// part './presentation/view/widgets/featured_books_list_view_bloc_builder.dart';
// ==================================================

// domain layer
// entities
part './domain/entities/book_entity.dart';
part './domain/entities/book_entity.g.dart';

// repos
part './domain/repos/home_repo.dart';

// use cases
part './domain/use_cases/fetch_featured_books_use_case.dart';
part './domain/use_cases/fetch_newest_books_use_case.dart';
// =============================================

// data layer

// models
part './data/models/book_model/book_model.dart';
part './data/models/book_model/volume_info.dart';
part './data/models/book_model/reading_modes.dart';
part './data/models/book_model/industry_identifier.dart';
part './data/models/book_model/image_links.dart';
part './data/models/book_model/access_info.dart';
part './data/models/book_model/epub.dart';
part './data/models/book_model/list_price.dart';
part './data/models/book_model/sale_info.dart';
part './data/models/book_model/pdf.dart';
part './data/models/book_model/panelization_summary.dart';
part './data/models/book_model/retail_price.dart';
part './data/models/book_model/search_info.dart';
part './data/models/book_model/offer.dart';

// data source
// remote data source
part './data/data_source/home_remote_data_source.dart';

// local data source
part './data/data_source/home_local_data_source.dart';

// repos impl
part './data/repos/home_repo_imp.dart';

// manager
part 'presentation/manager/fetch_featured_books/fetch_featured_books_cubit.dart';
part 'presentation/manager/fetch_featured_books/fetch_featured_books_state.dart';

part 'presentation/manager/fetch_newest_books/fetch_newest_books_cubit.dart';
part 'presentation/manager/fetch_newest_books/fetch_newest_books_state.dart';
