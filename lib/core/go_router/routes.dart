import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/auth/screens/login_screen.dart';
import 'package:turismo_mobile/user/screens/user_profile.dart';

class Routes {
  static GoRouter appRoutes = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'login',
        path: '/',
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
