import 'package:envied/envied.dart';

part 'env.g.dart';

//Here you can specify the path to your .env file
//  relative to the project root
@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'NEWS_API_URL', obfuscate: true)
  static final newsApiUrl = _Env.newsApiUrl;

  @EnviedField(varName: 'NEWS_API_KEY', obfuscate: true)
  static final newsApiKey = _Env.newsApiKey;

  @EnviedField(varName: 'PEXELS_API_URL', obfuscate: true)
  static final pexelsApiUrl = _Env.pexelsApiUrl;

  @EnviedField(varName: 'PEXELS_API_KEY', obfuscate: true)
  static final pexelsApiKey = _Env.pexelsApiKey;
}
