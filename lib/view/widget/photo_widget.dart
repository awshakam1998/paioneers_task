import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:paioneers_task/model/photo.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({Key key, this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: this.photo?.url,
              placeholder: (context, url) => Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'assets/loading.gif',
                  fit: BoxFit.fill,
                ),
              ),
              height: 100,
              width: 100,
            ),
            Flexible(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(this.photo.title),
            ))
          ],
        ),
      ),
    );
  }
}
