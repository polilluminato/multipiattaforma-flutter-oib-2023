import 'package:flutter_oib_2023/models/photo.dart';
import 'package:flutter_oib_2023/repository/photo_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'photo_provider.g.dart';

@riverpod
Future<List<Photo>?> photoList(PhotoListRef ref) async {
  return PhotoRepository().getPhotoList();
}
