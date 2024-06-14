import 'package:flutter/material.dart';

import '../widgets/book_details_view/book_details_appbar.dart';
import '../widgets/book_details_view/book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BookDetailsAppBar(),
      body: SafeArea(child: BookDetailsViewBody()),
    );
  }
}
