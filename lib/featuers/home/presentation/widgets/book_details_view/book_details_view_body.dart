import 'package:bookly_application/core/utilis/constants/styles.dart';
import 'package:bookly_application/featuers/home/presentation/widgets/home_view/best_seller/book_rating.dart';
import 'package:flutter/material.dart';

import '../home_view/books/book_listview_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 30),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.sizeOf(context).width * .5,
                child: const BookListViewItem()),
            const SizedBox(
              height: 35,
            ),
            Text(
              "The Jungle Book",
              style: AppStyles.styleRegular30
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            const Opacity(
              opacity: .7,
              child: Text(
                "Rudyard Kipling",
                style: AppStyles.styleMedium18,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const BookRating(),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      child: Text(
                        "19.99€",
                        textAlign: TextAlign.center,
                        style: AppStyles.styleBold15.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color(0xffEF8262),
                      ),
                      child: const Text(
                        "Free preview",
                        style: AppStyles.styleMedium16,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
