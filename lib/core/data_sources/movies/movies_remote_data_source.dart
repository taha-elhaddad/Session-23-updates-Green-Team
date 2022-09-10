import 'dart:async';

import '../../../locator.dart';
import '../../constant/api_routes.dart';
import '../../models/genre/genre.dart';
import '../../models/movie/movie.dart';
import '../../services/http/http_service.dart';

abstract class MoviesRemoteDataSource {
  Future<Movie> fetchMovie([Map<String, dynamic>? parameters]);

  Future<List<Movie>> fetchMoviesList([Map<String, dynamic>? parameters]);

  Future<Genre> fetchGenre([Map<String, dynamic>? parameters]);

  Future<List<Genre>> fetchGenresList([Map<String, dynamic>? parameters]);
}

class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  final HttpService? httpService = locator<HttpService>();

  @override
  Future<Movie> fetchMovie([Map<String, dynamic>? parameters]) async {
    Map<String, dynamic> restData = await (httpService!
        .getHttp(ApiRoutes.movie(parameters!['id']), parameters));

    return Movie.fromMap(restData['data']);
  }

  @override
  Future<List<Movie>> fetchMoviesList(
      [Map<String, dynamic>? parameters]) async {
    Map<String, dynamic> jsonData =
        await httpService!.getHttp(ApiRoutes.movies, parameters);

    var list = jsonData['data'] as List<dynamic>;

    var items =
        list.map<Movie>((vendorMap) => Movie.fromMap(vendorMap)).toList();

    return items;
  }

  @override
  Future<Genre> fetchGenre([Map<String, dynamic>? parameters]) async {
    Map<String, dynamic> restData = await (httpService!
        .getHttp(ApiRoutes.genre(parameters!['id']), parameters));

    return Genre.fromMap(restData['data']);
  }

  @override
  Future<List<Genre>> fetchGenresList(
      [Map<String, dynamic>? parameters]) async {
    Map<String, dynamic> jsonData =
    await httpService!.getHttp(ApiRoutes.genres, parameters);

    var list = jsonData['data'] as List<dynamic>;

    var items =
    list.map<Genre>((itemMap) => Genre.fromMap(itemMap)).toList();

    return items;
  }
}
