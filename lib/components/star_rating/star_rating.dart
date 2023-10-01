import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/config/color_config.dart';
import 'package:gerenciador_tarefas/config/size_config.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final Function(double rating)? onRatingChanged;
  final Color? color;
  final double? size;

  const StarRating({
    super.key,
    required this.rating,
    this.onRatingChanged,
    this.color,
    this.size,
  });

  final int starCount = 5;

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    double? iconSize = SizeConfig.iconSmall;

    if (index >= rating) {
      icon = Icon(
        Icons.star_rounded,
        color: (color ?? ColorConfig.primary).withOpacity(0.5),
        size: size ?? iconSize,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half_rounded,
        color: color ?? ColorConfig.primary,
        size: size ?? iconSize,
      );
    } else {
      icon = Icon(
        Icons.star_rounded,
        color: color ?? ColorConfig.primary,
        size: size ?? iconSize,
      );
    }

    return SizedBox(
      height: (size ?? iconSize) * 1.5,
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(starCount, (index) => buildStar(context, index)),
        ),
      ),
    );
  }
}
