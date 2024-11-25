library home;

// packages
import 'package:clean_arch_bookly_app/core/errors/failure.dart';
import 'package:clean_arch_bookly_app/core/index.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// constants
import 'package:clean_arch_bookly_app/core/utils/constants/app_images.dart';

// screens
part './presentation/view/home_view.dart';
part './presentation/view/book_details_view.dart';

// components
part './presentation/view/widgets/home_view_body.dart';
part './presentation/view/widgets/custome_home_app_bar.dart';
part './presentation/view/widgets/custome_book_image.dart';
part './presentation/view/widgets/featured_book_list_view.dart';
part './presentation/view/widgets/book_list_view_item.dart';
part './presentation/view/widgets/rating_books.dart';
part './presentation/view/widgets/book_item_details.dart';
part './presentation/view/widgets/best_seller_list_view.dart';
part './presentation/view/widgets/book_details_view_body.dart';
part './presentation/view/widgets/custome_book_details_app_bar.dart';
part './presentation/view/widgets/book_actions.dart';
part './presentation/view/widgets/infos_book_details.dart';
part './presentation/view/widgets/similar_books_list_view.dart';

// domain layer

// entities
part './domain/entities/book_entity.dart';

// repos
part './domain/repos/home_repo.dart';

// use cases
part './domain/use_cases/fetch_featured_books_use_case.dart';
part './domain/use_cases/fetch_newest_books_use_case.dart';
