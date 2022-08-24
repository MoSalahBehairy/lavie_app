import 'package:flutter/material.dart';
import 'package:lavie_app/components/utils/size_config.dart';


class HorizontalSpace extends StatelessWidget {
  final double? value;

  HorizontalSpace({required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize!*value!,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  final double? value;

  const VerticalSpace({required this.value});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: SizeConfig.defaultSize!*value!,
    );
  }
}