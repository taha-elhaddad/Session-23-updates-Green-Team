// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../core/models/actor/actor.dart' as _i10;
import '../core/models/movie/movie.dart' as _i11;
import 'views/actor_view/actor_view.dart' as _i5;
import 'views/actors_list/actors_list_view.dart' as _i4;
import 'views/main/main_view.dart' as _i1;
import 'views/movie_view/movie_view.dart' as _i6;
import 'views/movies_list/movies_list_view.dart' as _i3;
import 'views/settings/settings_view.dart' as _i7;
import 'views/startup/start_up_view.dart' as _i2;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CustomerMainViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.CustomerMainView());
    },
    StartUpViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.StartUpView());
    },
    MoviesListViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.MoviesListView());
    },
    ActorsListViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.ActorsListView());
    },
    ActorViewRoute.name: (routeData) {
      final args = routeData.argsAs<ActorViewRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.ActorView(args.actor));
    },
    MovieViewRoute.name: (routeData) {
      final args = routeData.argsAs<MovieViewRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.MovieView(args.movie));
    },
    SettingsViewRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.SettingsView());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(CustomerMainViewRoute.name,
            path: '/customer-main-view'),
        _i8.RouteConfig(StartUpViewRoute.name, path: '/'),
        _i8.RouteConfig(MoviesListViewRoute.name, path: '/movies-list-view'),
        _i8.RouteConfig(ActorsListViewRoute.name, path: '/actors-list-view'),
        _i8.RouteConfig(ActorViewRoute.name, path: '/actor-view'),
        _i8.RouteConfig(MovieViewRoute.name, path: '/movie-view'),
        _i8.RouteConfig(SettingsViewRoute.name, path: '/settings-view')
      ];
}

/// generated route for
/// [_i1.CustomerMainView]
class CustomerMainViewRoute extends _i8.PageRouteInfo<void> {
  const CustomerMainViewRoute()
      : super(CustomerMainViewRoute.name, path: '/customer-main-view');

  static const String name = 'CustomerMainViewRoute';
}

/// generated route for
/// [_i2.StartUpView]
class StartUpViewRoute extends _i8.PageRouteInfo<void> {
  const StartUpViewRoute() : super(StartUpViewRoute.name, path: '/');

  static const String name = 'StartUpViewRoute';
}

/// generated route for
/// [_i3.MoviesListView]
class MoviesListViewRoute extends _i8.PageRouteInfo<void> {
  const MoviesListViewRoute()
      : super(MoviesListViewRoute.name, path: '/movies-list-view');

  static const String name = 'MoviesListViewRoute';
}

/// generated route for
/// [_i4.ActorsListView]
class ActorsListViewRoute extends _i8.PageRouteInfo<void> {
  const ActorsListViewRoute()
      : super(ActorsListViewRoute.name, path: '/actors-list-view');

  static const String name = 'ActorsListViewRoute';
}

/// generated route for
/// [_i5.ActorView]
class ActorViewRoute extends _i8.PageRouteInfo<ActorViewRouteArgs> {
  ActorViewRoute({required _i10.Actor actor})
      : super(ActorViewRoute.name,
            path: '/actor-view', args: ActorViewRouteArgs(actor: actor));

  static const String name = 'ActorViewRoute';
}

class ActorViewRouteArgs {
  const ActorViewRouteArgs({required this.actor});

  final _i10.Actor actor;

  @override
  String toString() {
    return 'ActorViewRouteArgs{actor: $actor}';
  }
}

/// generated route for
/// [_i6.MovieView]
class MovieViewRoute extends _i8.PageRouteInfo<MovieViewRouteArgs> {
  MovieViewRoute({required _i11.Movie movie})
      : super(MovieViewRoute.name,
            path: '/movie-view', args: MovieViewRouteArgs(movie: movie));

  static const String name = 'MovieViewRoute';
}

class MovieViewRouteArgs {
  const MovieViewRouteArgs({required this.movie});

  final _i11.Movie movie;

  @override
  String toString() {
    return 'MovieViewRouteArgs{movie: $movie}';
  }
}

/// generated route for
/// [_i7.SettingsView]
class SettingsViewRoute extends _i8.PageRouteInfo<void> {
  const SettingsViewRoute()
      : super(SettingsViewRoute.name, path: '/settings-view');

  static const String name = 'SettingsViewRoute';
}
