import 'package:animation_tutorials/custom_widget/grid_title_text.dart';
import 'package:animation_tutorials/data/photo.dart';
import 'package:flutter/material.dart';

class GridPhotoItem extends StatelessWidget {
  const GridPhotoItem({Key? key, required this.photo}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: Material(
        color: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(4))
        ),
        clipBehavior: Clip.antiAlias,
        child: GridTileBar(
          backgroundColor: Colors.black45,
          title: GridTitleText(photo.title ?? ""),
          subtitle: GridTitleText(photo.subTitle ?? ""),
        ),
      ),
      child: _buildImage(),
    );
  }

  Widget _buildImage() {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      clipBehavior: Clip.antiAlias,
      child: photo.url != null ? Image.network(
        photo.url ?? "",
        fit: BoxFit.cover,
      ) : const FlutterLogo()
    );
  }
}
