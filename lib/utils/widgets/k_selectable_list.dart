import 'package:flutter/material.dart';

import '../constant.dart';
import '../helpers/app_dimens.dart';
import '../helpers/helpers.dart';

class KSelectableList extends StatelessWidget {
  final Widget child;
  final bool active;
  const KSelectableList({required this.child, required this.active, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 8),
      padding: mPadding,
      decoration: BoxDecoration(
        borderRadius: AppDimens.cardBorderRadius,
        color: active ? primaryColor : darkGrey,
      ),
      child: child,
    );
  }
}
