import 'package:flutter/material.dart';

class ThumbnailPlaceholder extends StatelessWidget {
  const ThumbnailPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      color: Colors.black26,
      alignment: Alignment.center,
      child: const Icon(Icons.image),
    );
  }
}
