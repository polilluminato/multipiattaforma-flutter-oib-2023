import 'package:flutter/material.dart';
import 'package:flutter_oib_2023/models/photo.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({super.key, required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //NetworkImage(photo.src.original ?? ""),
          Image.network(photo.src!.medium!),
          Text(
            "${photo.alt}",
            style: textTheme.labelMedium,
          ),
          Text(
            "${photo.photographer}",
            style: textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
