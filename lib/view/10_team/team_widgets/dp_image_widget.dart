import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget dpImage(String image) => CircleAvatar(
      radius: 30,
      backgroundImage: CachedNetworkImageProvider(
        image,
      ),
    );
