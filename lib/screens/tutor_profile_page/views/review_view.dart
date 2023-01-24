import 'package:flutter/material.dart';
import '../../../components/view_review_contents.dart';

class ReviewView extends StatelessWidget {
  const ReviewView({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        physics: const ClampingScrollPhysics(),
        itemBuilder: (context, index) {
          return const ViewReviewsContents(
            img:
                'https://media.istockphoto.com/id/539246041/photo/happy-student-in-class.jpg?s=612x612&w=0&k=20&c=lIyIt9Rq5Ahj140VLYYDB8urF8ss-eqoZVbkAlAsXIk=',
            name: 'Johan Perkins',
            ratings: 4.5,
            createdBy: '1',
            content:
                'he is a very good personality and very brilliant student. his math and science subject is very well.And they explain science and math like that even a small child can do advanced level math?',
          );
        },
      ),
    );
  }
}
