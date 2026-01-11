import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/credits_response.dart';


class ActorMapper {

  static const String noProfilePath = 'https://upload.wikimedia.org/wikipedia/commons/0/0a/No-image-available.png';
  static const String urlBase = 'https://image.tmdb.org/t/p/w500/';

  static Actor castToEntity(Cast cast) => Actor(
    id: cast.id,
    name: cast.name,
    profilePath: cast.profilePath != null
      ? '$urlBase${cast.profilePath}'
      : noProfilePath,
    character: cast.character
  );
}