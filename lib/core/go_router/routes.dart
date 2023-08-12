import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/auth/screens/login_screen.dart';

class Routes {
  static GoRouter appRoutes = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: 'login',
        path: '/',
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
