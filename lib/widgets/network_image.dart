import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ReusableNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  const ReusableNetworkImage({
    Key? key,
    required this.imageUrl,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: CircularProgressIndicator(
          value: downloadProgress.progress,
          color: Theme.of(context).primaryColor,
        ),
      ),
      errorWidget: (context, url, error) =>
          const Icon(UniconsLine.exclamation_circle),
    );
  }
}
