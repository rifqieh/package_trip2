import 'package:flutter/material.dart';
import 'package:package_trip/theme.dart';

class TripOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isSelected;

  const TripOption({
    Key? key,
    this.title = '',
    this.subtitle = '',
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: isSelected ? Border.all(color: kOrangeColor, width: 1) : null,
        color: kCardColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  subtitle,
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          isSelected
              ? Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_checklist.png',
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
