import 'package:go_router/go_router.dart';
import 'package:turismo_mobile/core/models/itinerary/itinerary.dart';
import 'package:turismo_mobile/interface/auth/login_screen.dart';
import 'package:turismo_mobile/interface/create_itinerary/days_agenda/layout/agenda_layout.dart';
import 'package:turismo_mobile/interface/create_itinerary/place_search/layout/place_search_layout.dart';
import 'package:turismo_mobile/interface/create_itinerary/trip_duration/layout/trip_duration.dart';
import 'package:turismo_mobile/interface/home/home.dart';
import 'package:turismo_mobile/interface/user/user_profile.dart';

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
        builder: (context, state) => const UserProfileScreen(),
      ),
      GoRoute(
        name: 'create-itinerary',
        path: '/create',
        builder: (context, state) => const PlaceSearchLayout(),
      ),
      GoRoute(
        name: 'trip-duration',
        path: '/trip-duration',
        builder: (context, state) {
          ItineraryModel model = state.extra as ItineraryModel;
          return TripDurationLayout(model: model);
        },
      ),
      GoRoute(
        name: 'agenda',
        path: '/agenda',
        builder: (context, state) {
          ItineraryModel model = state.extra as ItineraryModel;
          return DaysAgenda(model: model);
        },
      )
    ],
  );
}
