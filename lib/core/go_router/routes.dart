import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/interface/auth/login_screen.dart';
import 'package:turismo_mobile/interface/home/home.dart';
import 'package:turismo_mobile/interface/user/screens/user_profile.dart';

class Routes {
  static GoRouter appRoutes = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: 'user-profile',
        path: '/user',
        builder: (context, state) => const UserProfile(),
      ),
    ],
  );
}
