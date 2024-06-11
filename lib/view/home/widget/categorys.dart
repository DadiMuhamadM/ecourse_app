import 'package:ecourse_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';

class Categorys extends StatelessWidget {
  const Categorys({
    super.key,
    required this.textCategory,
    required this.image,
  });

  final String textCategory;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 12,
        bottom: 30,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 24,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            textCategory,
            style: secondTextStyle.copyWith(
              color: wtColor,
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
