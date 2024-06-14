import 'package:alisatiyor/app/view/home_view/home_view.dart';
import 'package:alisatiyor/app/view/image_detail_view/image_detail_view.dart';
import 'package:alisatiyor/app/view/image_view/image_view.dart';
import 'package:alisatiyor/app/view/messages_view/messages_view.dart';
import 'package:alisatiyor/app/view/onboarding_view/onboarding_view.dart';
import 'package:alisatiyor/app/view/save_image_view/save_image_view.dart';
import 'package:alisatiyor/app/view/signin_view.dart/signin_view.dart';
import 'package:alisatiyor/app/view/signup_view/signup_view.dart';
import 'package:alisatiyor/app/view/view_account/account_view.dart';
import 'package:alisatiyor/app/widgets/custom_scaffold_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    AutoRoute(page: SigninRoute.page),
    AutoRoute(page: SignupRoute.page),
    AutoRoute(page: ImageRoute.page),
    AutoRoute(page: MessagesRoute.page),
    AutoRoute(page: SaveImageRoute.page),
    AutoRoute(page: ImageDetailRoute.page),
    AutoRoute(page: CustomScaffoldRoute.page, children: [
      AutoRoute(page: HomeRoute.page, initial: true),
      AutoRoute(page: AccountRoute.page),
    ])
  ];
}
