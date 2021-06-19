import 'package:flutter/material.dart';
import 'package:package_trip/theme.dart';

class HotelOption extends StatelessWidget {
  final String title;
  final String location;
  final String imageUrl;
  final int price;
  final int rating;
  final bool isSelected;

  const HotelOption({
    Key? key,
    this.title = '',
    this.location = '',
    this.imageUrl = '',
    this.price = 0,
    this.rating = 0,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 164,
                      height: 41,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                        ),
                        color: kCardColor.withOpacity(0.4),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'IDR $price\k',
                            style: orangeTextStyle.copyWith(
                              fontWeight: medium,
                              letterSpacing: 2,
                            ),
                          ),
                          Text(
                            '/Night',
                            style: whiteTextStyle.copyWith(
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    isSelected
                        ? Container(
                            height: 25,
                            width: 25,
                            margin: EdgeInsets.only(right: 12),
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: kGreyColor,
                          size: 12,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          location,
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: rating >= 1 ? kOrangeColor : kGreyColor,
                    ),
                    Icon(
                      Icons.star,
                      color: rating >= 2 ? kOrangeColor : kGreyColor,
                    ),
                    Icon(
                      Icons.star,
                      color: rating >= 3 ? kOrangeColor : kGreyColor,
                    ),
                    Icon(
                      Icons.star,
                      color: rating >= 4 ? kOrangeColor : kGreyColor,
                    ),
                    Icon(
                      Icons.star,
                      color: rating >= 5 ? kOrangeColor : kGreyColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
