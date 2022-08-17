import 'package:flutter/material.dart';

///[SimpleUIs] this class contains many widgets to user anywhere
///to avoid duplicate codes
class SimpleUIs {
  Future showProgressIndicator(context) async {
    FocusScope.of(context).unfocus();
    if (ModalRoute.of(context)?.isCurrent ?? true) {
      await showGeneralDialog(
          barrierLabel: "Barrier",
          barrierDismissible: false,
          barrierColor: Colors.black.withOpacity(0.5),
          transitionDuration: const Duration(milliseconds: 500),
          context: context,
          pageBuilder: (_, __, ___) {
            return WillPopScope(
              onWillPop: () async => false,
              child: progressIndicator(),
            );
          });
    }
  }

  static Widget progressIndicator() {
    return const Center(child: CircularProgressIndicator.adaptive());
  }
}
