import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class GiftCardTile extends StatelessWidget {
  const GiftCardTile({super.key, required this.scale});

  final double scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12 * scale,
        vertical: 10 * scale,
      ),
      decoration: BoxDecoration(
        color: AppColors.giftCardTile,
        borderRadius: BorderRadius.circular(14 * scale),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18 * scale,
            backgroundColor: AppColors.giftIconBackground,
            child: Icon(
              Icons.card_giftcard,
              color: AppColors.giftIcon,
              size: 20 * scale,
            ),
          ),
          SizedBox(width: 12 * scale),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Claim Gift Card',
                  style: TextStyle(
                    fontSize: 14 * scale,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 2 * scale),
                Text(
                  'Enter gift card details to claim your gift card',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 10.5 * scale,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.chevron_right_rounded, size: 28 * scale),
        ],
      ),
    );
  }
}
