import 'package:colorschema/core/utils/fontstyles.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/image.utils.dart';

class SocialsCard extends StatelessWidget {
  const SocialsCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01, horizontal: size.width * 0.08),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Image.asset(
                AppImages.googleIcon,
                width: size.width * 0.05,
                height: size.height * 0.05,
              ),
              SizedBox(width: size.width * 0.02),
              Text(
                'Google',
                style: kTextHead.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01, horizontal: size.width * 0.05),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Image.asset(
                AppImages.facebookIcon,
                width: size.width * 0.05,
                height: size.height * 0.05,
              ),
              SizedBox(width: size.width * 0.02),
              Text(
                'Facebook',
                style: kTextHead.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
