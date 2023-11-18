import 'package:Ryan/core/utils/common_functions.dart';
import 'package:Ryan/core/widget/drawer.dart';
import 'package:flutter/material.dart';

class ComplaintsSubmissionScreen extends StatelessWidget {
  const ComplaintsSubmissionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اتصل بنا',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      drawer: const HomeDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'في حالة وجود شكوي يرجى الأطلاع على التالي:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightSpace(30),
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'أرسل لنا بريدا اليكترونيا الي info@beyond-ib.com',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'أو اتصل علي رقم 235564646',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                'عدم استلام الشكوي, سنقوم بالتواصل معك لمناقشة الشكوي وتوضيح الوقت للتحقيق في الشكوي وابلاغك بالنتيجة',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
