import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final int _selectedIndex;

  Details(this._selectedIndex);

  final List<String> images = [
    "assets/images/pubg.png",
    "assets/images/fort.jpg",
    "assets/images/duty.jpg",
    "assets/images/theft.jpg",
    "assets/images/pro.jpg",
    "assets/images/wolfs.jpg",


  ];

  final List<String> titles = [
    "Trending\nGames",
    "Latest\nGames",
    "Favourites",
    "All"
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 8, 0, 0),
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView(
            children: <Widget>[
              Text(titles[_selectedIndex],
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(
                height: 24,
              ),
              for (var i in images) ImageData(i),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageData extends StatelessWidget {
  final data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(0, 0, 24, 24),
      child: Image.asset(data),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }

  const ImageData(this.data);
}