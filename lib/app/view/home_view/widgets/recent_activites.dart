import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('İşlem $index'),
          subtitle: Text('Açıklama $index'),
          trailing: Text('₺ 100.00'),
        );
      },
    );
  }
}
