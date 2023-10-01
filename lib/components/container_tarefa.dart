import 'package:flutter/material.dart';
import 'package:gerenciador_tarefas/components/button.dart';
import 'package:gerenciador_tarefas/components/container.dart';
import 'package:gerenciador_tarefas/components/percent_indicator.dart';
import 'package:gerenciador_tarefas/components/star_rating/rating.dart';
import 'package:gerenciador_tarefas/components/text.dart';
import 'package:gerenciador_tarefas/config/color_config.dart';
import 'package:gerenciador_tarefas/config/size_config.dart';

Widget _button() {
  return Padding(
    padding: const EdgeInsets.only(right: SizeConfig.spacingNormal),
    child: getButton(
      onPressed: () {},
      width: 40,
      maxHeight: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.arrow_drop_up, color: ColorConfig.white),
          getText(text: 'Lvl Up'),
        ],
      ),
    ),
  );
}

Widget _header() {
  return Row(
    children: [
      getContainer(
        width: 100,
        height: 100,
        child: const Icon(
          Icons.task_alt,
          size: SizeConfig.iconBig,
          color: ColorConfig.grey,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(SizeConfig.spacingNormal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getText(text: 'Aprenda Flutter', fontSize: SizeConfig.fontBig, bold: true),
            getRatingFixed(rating: 3, size: 15),
          ],
        ),
      ),
      const Spacer(),
      _button(),
    ],
  );
}

Widget _bottom() {
  return Builder(
    builder: (context) => Expanded(
      child: Padding(
        padding: const EdgeInsets.all(SizeConfig.spacingNormal),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getLinearPercentIndicator(60 / 100, lineHeight: 5, width: MediaQuery.of(context).size.width - 150),
            getText(text: 'Nível: 12', color: ColorConfig.white, fontSize: SizeConfig.fontNormal),
          ],
        ),
      ),
    ),
  );
}

Widget getContainerTarefa() {
  return getContainer(
    height: 150,
    padding: EdgeInsets.zero,
    margin: const EdgeInsets.only(bottom: SizeConfig.spacingNormal),
    backgroundColor: ColorConfig.primary,
    shadow: [const BoxShadow(color: Colors.black38, blurRadius: 10, offset: Offset(0, 2))],
    child: Column(
      children: [
        getContainer(
          height: 100,
          backgroundColor: ColorConfig.white,
          padding: EdgeInsets.zero,
          child: _header(),
        ),
        _bottom(),
      ],
    ),
  );
}
