import 'package:animation_tutorials/custom_widget/grid_photo_item.dart';
import 'package:animation_tutorials/data/photo.dart';
import 'package:animation_tutorials/routes.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Photo> _photos = [
    Photo(
        routeName: kRouteImplicitAnimations1,
        url:
        'https://raw.githubusercontent.com/flutter/website/master/src/images/owl.jpg',
        title: 'Implicit Animations 1',
        subTitle: 'Fade-in text effect'),
    Photo(
        routeName: kRouteImplicitAnimations2,
        url: null,
        title: 'Implicit Animations 2',
        subTitle: 'Shape-shifting effect'),
    Photo(
        routeName: kRouteExplicitAnimations1,
        url: null,
        title: 'Explicit Animations 1',
        subTitle: 'Expanded effect'),
    Photo(
        routeName: kRouteExplicitAnimations2,
        url: null,
        title: 'Explicit Animations 2',
        subTitle: 'Shape-shifting effect'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Implicit & Explicit Animations'),
      ),
      body: GridView.count(
        restorationId: 'grid_view_grid_offset',
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: const EdgeInsets.all(8),
        childAspectRatio: 1,
        children: _photos.map((photo) {
          return GestureDetector(
            child: GridPhotoItem(photo: photo),
            onTap: () {
              Navigator.of(context).pushNamed(photo.routeName);
            },
          );
        }).toList(),
      ),
    );
  }
}
