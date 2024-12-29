library search;

import 'package:clean_arch_bookly_app/core/index.dart';
import 'package:clean_arch_bookly_app/core/utils/constants/app_images.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';

// screens
part './presentation/view/search_view.dart';

// components
part './presentation/view/widgets/search_view_body.dart';
part './presentation/view/widgets/custome_search_text_field.dart';
part './presentation/view/widgets/search_items_list_view.dart';

// domain

// entity
part './domain/entities/search_entity.dart';
part './domain/entities/search_entity.g.dart';

// repos
part './domain/repos/search_repo.dart';

// use case
part './domain/use_cases/fetch_search_books_use_case.dart';
