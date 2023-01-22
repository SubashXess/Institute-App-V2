import 'package:flutter/material.dart';
import '../../../../constants/boxshadow.dart';
import '../../../../constants/symbols.dart';
import '../../../../constants/textstyles.dart';
import '../../../../constants/themes.dart';

class TutorCardWidget extends StatelessWidget {
  const TutorCardWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        boxShadow: [
          AppBoxShadow.s0BoxShadow(color: Colors.black.withOpacity(0.086))
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: AppContainerTheme.appContainerBluishTheme,
                radius: 24.0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-photo/teenager-student-girl-yellow-pointing-finger-side_1368-40175.jpg?w=2000'),
                  radius: 22.0,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mattew Gibson',
                      style:
                          AppTextStyle.h3TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      'I will share my expertise with the student community where they get a job.',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.h4TextStyle(
                        color: AppTextTheme.appTextThemeLight,
                        size: 13.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildCardItems(icon: Icons.star_rounded, label: '4.5'),
              _buildCardItems(icon: Icons.group_rounded, label: '800+'),
              _buildCardItems(icon: Icons.work_rounded, label: '5 Years'),
            ],
          ),
          const SizedBox(height: 16.0),
          _rowItems(
              icon: Icons.location_on_rounded,
              label: 'Chandrasekharpur, Bhubaneswar, Odisha 751016'),
          const SizedBox(height: 10.0),
          _rowItems(
              icon: Icons.access_time_filled_rounded,
              label: '8:00 AM - 11:00 AM'),
          const SizedBox(height: 10.0),
          _rowItems(
              icon: Icons.my_library_books_rounded, label: 'Maths, Computers'),
          const SizedBox(height: 10.0),
          _rowItems(
              icon: Icons.menu_book_rounded, label: 'ICSE (6-10), CBSE(6-8)'),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text(
                '${AppUnicode.rupeeUnicode}650/hour',
                style: AppTextStyle.h3TextStyle(
                    color: AppTheme.appThemeColor,
                    fontWeight: FontWeight.w700,
                    size: 14.0),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: Container(
                  width: size.width,
                  height: 36.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.green.shade400,
                  ),
                  child: Center(
                    child: Text(
                      'Request a call',
                      style: AppTextStyle.h4TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Container(
                  width: size.width,
                  height: 36.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.amber.shade400,
                  ),
                  child: Center(
                    child: Text(
                      'Send message',
                      style: AppTextStyle.h4TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCardItems({required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppContainerTheme.appContainerBluishTheme,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16.0,
            color: Colors.black45,
          ),
          const SizedBox(width: 6.0),
          Text(
            label,
            style: AppTextStyle.h4TextStyle(
                fontWeight: FontWeight.w500, size: 12.0),
          ),
        ],
      ),
    );
  }

  Widget _rowItems({required IconData icon, required String label}) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18.0,
          color: Colors.black45,
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.h4TextStyle(color: Colors.black45, size: 13.0),
          ),
        ),
      ],
    );
  }
}
