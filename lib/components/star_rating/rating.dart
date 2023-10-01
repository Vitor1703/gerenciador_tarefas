import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/components/star_rating/star_rating.dart';
import 'package:gerenciador_tarefas/components/text.dart';

Widget getRatingFixed({
  required double rating,
  double? size,
  Color? colorRating,
}) {
  return StarRating(
    rating: rating,
    size: size,
    color: colorRating,
  );
}

Widget getRatingWithLabel({
  MainAxisAlignment? mainAxisAlignment,
  String? label,
  double? labelSize,
  Color? labelColor,
  required double rating,
  double? size,
  Color? colorRating,
  bool? showNumberRating,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
    children: [
      getText(text: label ?? rating.toStringAsFixed(1), fontSize: labelSize, color: labelColor),
      StarRating(
        rating: rating,
        size: size,
        color: colorRating,
        onRatingChanged: (rating) {},
      ),
      showNumberRating ?? false ? getText(text: rating.toStringAsFixed(1), fontSize: labelSize, color: labelColor) : Container(),
    ],
  );
}
