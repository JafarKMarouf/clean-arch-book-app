library search;

import 'package:clean_arch_bookly_app/core/index.dart';
import 'package:clean_arch_bookly_app/core/utils/constants/app_images.dart';
import 'package:clean_arch_bookly_app/features/home/index.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

// import 'presentation/view/widgets/custome_search_text_field.dart';
// import 'presentation/view/widgets/search_items_list_view_bloc_builder.dart';
import 'presentation/view/widgets/search_view_body.dart';

// screens
part './presentation/view/search_view.dart';

// components
// part './presentation/view/widgets/search_view_body.dart';
part './presentation/view/widgets/search_items_list_view.dart';
part 'presentation/view/widgets/search_items_list_view_loading_indecator.dart';
part './presentation/view/widgets/search_list_view_item.dart';
part 'presentation/view/widgets/search_book_item_details.dart';

// domain layer
// entity

// repos
part './domain/repos/search_repo.dart';

// use case
part './domain/use_cases/fetch_search_books_use_case.dart';

// data layer
// models
part './data/models/search_result_model/search_result_model.dart';
part 'data/models/search_result_model/search_result_item.dart';
part './data/models/search_result_model/volume_info.dart';
part './data/models/search_result_model/reading_modes.dart';
part './data/models/search_result_model/industry_identifier.dart';
part './data/models/search_result_model/image_links.dart';
part './data/models/search_result_model/access_info.dart';
part './data/models/search_result_model/epub.dart';
part './data/models/search_result_model/sale_info.dart';
part './data/models/search_result_model/pdf.dart';
part './data/models/search_result_model/panelization_summary.dart';
part './data/models/search_result_model/search_info.dart';
part './data/models/search_result_model/offer.dart';
part './data/models/search_result_model/list_price.dart';
part './data/models/search_result_model/retail_price.dart';

// data source
// remote data source
part './data/data_source/search_remote_data_source.dart';

//local data source
part './data/data_source/search_local_data_source.dart';

// repos impl
part './data/repos/search_repo_impl.dart';

// manager
part 'presentation/manager/search_books_cubit/search_books_cubit.dart';
part 'presentation/manager/search_books_cubit/search_books_state.dart';
