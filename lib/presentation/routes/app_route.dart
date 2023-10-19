part of 'app_page.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const SPLASH = _Paths.SPLASH;
}

abstract class _Paths {
  static const HOME = '/home';
  static const SPLASH = '/splash';
}
