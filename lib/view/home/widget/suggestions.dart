import 'package:ecourse_app/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
        top: 20,
      ),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2.3,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Music Production',
                    style: secondTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  Text(
                    'Fundamentals for Composition in Any Genre',
                    style: secondTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Expand your music composition skills t...',
                    style: secondTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '30 min',
                        style: secondTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: yellowColor,
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          size: 26,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1.7,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Development',
                    style: secondTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  Text(
                    'Communication Skills',
                    style: secondTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircularPercentIndicator(
                      radius: 35,
                      lineWidth: 12,
                      percent: 0.25,
                      progressColor: yellowColor,
                      backgroundColor: greyColor,
                      center: Text(
                        '25%',
                        style: secondTextStyle.copyWith(
                          fontWeight: semiBold,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1.6,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Join your live class',
                    style: secondTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Image.asset('assets/avatars.png')
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2.4,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You haven’t missed a class in three days!',
                    style: secondTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Image.asset('assets/karakter1.png')
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Article',
                    style: secondTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  Text(
                    'Tips for better teamwork for you...!',
                    style: secondTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                  Image.asset('assets/karakter2.png')
                ],
              ),
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2.4,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Development',
                    style: secondTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  Text(
                    'Social Media Marketing',
                    style: secondTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'In this course, we will learn the basic strat...',
                    style: secondTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: CircularPercentIndicator(
                      radius: 35,
                      lineWidth: 12,
                      percent: 0.6,
                      progressColor: yellowColor,
                      backgroundColor: greyColor,
                      center: Text(
                        '60%',
                        style: secondTextStyle.copyWith(
                          fontWeight: semiBold,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
