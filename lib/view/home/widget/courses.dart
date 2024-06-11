import 'package:ecourse_app/model/data_course.dart';
import 'package:ecourse_app/utils/theme.dart';
import 'package:ecourse_app/view/home/detail_course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({
    super.key,
    required this.dummyDataCourse,
  });

  final List<DataCourse> dummyDataCourse;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: dummyDataCourse.length,
      itemBuilder: (context, index) {
        final dataDetailCourse = dummyDataCourse[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailCoursePage(
                  dataDetailCourse: dataDetailCourse,
                ),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 30,
              top: 20,
              right: 18,
            ),
            height: 234,
            width: 257,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(dummyDataCourse[index].image),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            width: MediaQuery.of(context).size.width / 5 * 2.3,
                            child: Text(
                              dummyDataCourse[index].name,
                              style: secondTextStyle.copyWith(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 14,
                                color: whiteColor,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Image.asset(
                            'assets/save.png',
                            height: 24,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/avatar1.png',
                            height: 24,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            dummyDataCourse[index].instructor,
                            style: secondTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: semiBold,
                              color: whiteColor,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            dummyDataCourse[index].price,
                            style: priceTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: whiteColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            dummyDataCourse[index].time,
                            style: secondTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.star_border,
                            color: whiteColor,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            dummyDataCourse[index].rating,
                            style: secondTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
