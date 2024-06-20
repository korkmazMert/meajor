// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      final args = routeData.argsAs<AccountRouteArgs>(
          orElse: () => const AccountRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AccountView(key: args.key),
      );
    },
    CustomScaffoldRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CustomScaffoldView(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeView(key: args.key),
      );
    },
    ImageDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ImageDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ImageDetailView(
          imageUrl: args.imageUrl,
          heroTag: args.heroTag,
          key: args.key,
        ),
      );
    },
    ImageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ImageView(),
      );
    },
    LiveSupportRoute.name: (routeData) {
      final args = routeData.argsAs<LiveSupportRouteArgs>(
          orElse: () => const LiveSupportRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LiveSupportView(key: args.key),
      );
    },
    MessagesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MessagesView(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingView(),
      );
    },
    SaveImageRoute.name: (routeData) {
      final args = routeData.argsAs<SaveImageRouteArgs>(
          orElse: () => const SaveImageRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SaveImageView(key: args.key),
      );
    },
    SigninRoute.name: (routeData) {
      final args = routeData.argsAs<SigninRouteArgs>(
          orElse: () => const SigninRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SigninView(key: args.key),
      );
    },
    SignupRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignupView(),
      );
    },
  };
}

/// generated route for
/// [AccountView]
class AccountRoute extends PageRouteInfo<AccountRouteArgs> {
  AccountRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          AccountRoute.name,
          args: AccountRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<AccountRouteArgs> page =
      PageInfo<AccountRouteArgs>(name);
}

class AccountRouteArgs {
  const AccountRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AccountRouteArgs{key: $key}';
  }
}

/// generated route for
/// [CustomScaffoldView]
class CustomScaffoldRoute extends PageRouteInfo<void> {
  const CustomScaffoldRoute({List<PageRouteInfo>? children})
      : super(
          CustomScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomScaffoldRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ImageDetailView]
class ImageDetailRoute extends PageRouteInfo<ImageDetailRouteArgs> {
  ImageDetailRoute({
    required String imageUrl,
    required String heroTag,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ImageDetailRoute.name,
          args: ImageDetailRouteArgs(
            imageUrl: imageUrl,
            heroTag: heroTag,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ImageDetailRoute';

  static const PageInfo<ImageDetailRouteArgs> page =
      PageInfo<ImageDetailRouteArgs>(name);
}

class ImageDetailRouteArgs {
  const ImageDetailRouteArgs({
    required this.imageUrl,
    required this.heroTag,
    this.key,
  });

  final String imageUrl;

  final String heroTag;

  final Key? key;

  @override
  String toString() {
    return 'ImageDetailRouteArgs{imageUrl: $imageUrl, heroTag: $heroTag, key: $key}';
  }
}

/// generated route for
/// [ImageView]
class ImageRoute extends PageRouteInfo<void> {
  const ImageRoute({List<PageRouteInfo>? children})
      : super(
          ImageRoute.name,
          initialChildren: children,
        );

  static const String name = 'ImageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LiveSupportView]
class LiveSupportRoute extends PageRouteInfo<LiveSupportRouteArgs> {
  LiveSupportRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LiveSupportRoute.name,
          args: LiveSupportRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LiveSupportRoute';

  static const PageInfo<LiveSupportRouteArgs> page =
      PageInfo<LiveSupportRouteArgs>(name);
}

class LiveSupportRouteArgs {
  const LiveSupportRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LiveSupportRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MessagesView]
class MessagesRoute extends PageRouteInfo<void> {
  const MessagesRoute({List<PageRouteInfo>? children})
      : super(
          MessagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessagesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SaveImageView]
class SaveImageRoute extends PageRouteInfo<SaveImageRouteArgs> {
  SaveImageRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SaveImageRoute.name,
          args: SaveImageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SaveImageRoute';

  static const PageInfo<SaveImageRouteArgs> page =
      PageInfo<SaveImageRouteArgs>(name);
}

class SaveImageRouteArgs {
  const SaveImageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SaveImageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SigninView]
class SigninRoute extends PageRouteInfo<SigninRouteArgs> {
  SigninRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SigninRoute.name,
          args: SigninRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SigninRoute';

  static const PageInfo<SigninRouteArgs> page = PageInfo<SigninRouteArgs>(name);
}

class SigninRouteArgs {
  const SigninRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SigninRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignupView]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute({List<PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
