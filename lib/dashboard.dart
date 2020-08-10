import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ActionToolBar extends StatelessWidget {
// Full dimensions of an action
  static const double ActionWidgetSize = 60.0;

// The size of the icon showen for Social Actions
  static const double ActionIconSize = 35.0;

// The size of the share social icon
  static const double ShareActionIconSize = 25.0;

// The size of the profile image in the follow Action
  static const double ProfileImageSize = 50.0;

// The size of the plus icon under the profile image in follow action
  static const double PlusIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      color: Colors.grey,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        _getPicture(),
        _getAction(icon: Icons.fitness_center, title: 'Push-Ups'),
        _getAction(icon: Icons.directions_bike, title: 'Pull-Ups'),
        _getAction(icon: Icons.favorite, title: 'Pull-Ups'),
        _getAction(icon: Icons.directions_walk, title: 'Pull-Ups'),
        _getAction(icon: Icons.headset, title: 'Pull-Ups'),
        _getFollowAction()
      ]),
    );
  }

  Widget _getAction({String title, IconData icon}) {
    return GestureDetector(
        onTap: null,
        child: Container(
            width: ActionWidgetSize,
            height: ActionWidgetSize,
            child: Column(
              children: [
                Icon(icon, size: 30.0, color: Colors.white),
                Padding(
                  padding: EdgeInsets.only(top: 2.0),
                  child: Text(title,
                      style: TextStyle(fontSize: 12.0, color: Colors.white)),
                )
              ],
            )));
  }

  Widget _getFollowAction({String pictureUrl}) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        width: ActionWidgetSize,
        height: ActionWidgetSize,
        child: Stack(children: [_getPicture(), _getPlusIcon()]));
  }

  Widget _getPicture() {
    return Positioned(
        left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
        child: Container(
          padding:
              EdgeInsets.all(1.0), // Add 1.0 point padding to create border
          height: ProfileImageSize, // ProfileImageSize = 50.0;
          width: ProfileImageSize, // ProfileImageSize = 50.0;
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
          // import 'package:cached_network_image/cached_network_image.dart'; at the top to use CachedNetworkImage
          child: CachedNetworkImage(
            imageUrl:
                "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7",
            placeholder: (context, url) => new CircularProgressIndicator(),
            errorWidget: (context, url, error) => new Icon(Icons.error),
          ),
        ));
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
      child: Container(
          width: PlusIconSize, // PlusIconSize = 20.0;
          height: PlusIconSize, // PlusIconSize = 20.0;
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 43, 84),
              borderRadius: BorderRadius.circular(15.0)),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 20.0,
          )),
    );
  }
}
