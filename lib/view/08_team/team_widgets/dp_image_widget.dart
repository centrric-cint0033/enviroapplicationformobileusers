import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/material.dart';

Widget dpImage(String image) => CircleAvatar(
      radius: 30,
      backgroundColor: Appthemes.cLightGrey,
      backgroundImage: CachedNetworkImageProvider(
        image,
      ),
    );
