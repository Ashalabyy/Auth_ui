import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String svgicon;

  const CustomSuffixIcon({
    super.key,
    required this.svgicon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      child: SvgPicture.asset(
        svgicon,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
