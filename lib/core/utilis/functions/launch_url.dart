import 'package:bookly_application/core/utilis/functions/show_custom_snakbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launshUrl(BuildContext context, String? link) async {
  if (link == null) {
    return;
  }
  try {
    if (!await launchUrl(Uri.parse(link))) {
      if (context.mounted) {
        showCustomSnakBar(context, 'Could not launch');
      }
    }
  } catch (ex) {
    if (context.mounted) {
      showCustomSnakBar(context, ex.toString());
    }
  }
}
