import 'package:ecourse_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';

class SubTittle extends StatelessWidget {
  const SubTittle({
    super.key,
    required this.subText,
  });
  final String subText;
  @override
  Widget build(BuildContext context) {
    return Text(
      subText,
      style: secondTextStyle.copyWith(
        fontSize: 16,
        fontWeight: bold,
        color: whiteColor,
      ),
    );
  }
}
