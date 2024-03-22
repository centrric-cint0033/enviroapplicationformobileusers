import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_notification/oh&s_notification_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void _handleRightButtonTap() {
  print('Right button tapped!');
}

Padding notification_page() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 9.0),
                  child: TextButton(
                    onPressed: _handleRightButtonTap,
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.blue),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 188, 209, 228),
                      ),
                    ),
                    child: const Text(
                      'Add New +',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 9.0),
                child: TextButton(
                  onPressed: _handleRightButtonTap,
                  style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Colors.blue),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 188, 209, 228),
                    ),
                  ),
                  child: const Text(
                    'Archive',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Observer(builder: (_) {
          return Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount:
                  vmohsnotification.notificationpageResponse.data?.length ?? 0,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 12.0),
              itemBuilder: (context, index) {
                var data =
                    vmohsnotification.notificationpageResponse.data?[index];
                return GestureDetector(
                  onTap: () => ohsdetailpagefunction(context, data),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    child: Card(
                      color: const Color.fromARGB(255, 188, 209, 228),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            // Display image from the view model
                            SizedBox(
                              width: 100,
                              height: 100,
                              child: data?.dp != null
                                  ? Image.network(
                                      data!.dp!,
                                      fit: BoxFit.cover,
                                    )
                                  : const Placeholder(), // Placeholder if image is not available
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      data?.title ?? '',
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                    Text(
                                      data?.created_by ?? '',
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () =>
                                  notificationdetailpagefunction(context, data),
                              style: ButtonStyle(
                                side: MaterialStateProperty.all<BorderSide>(
                                  const BorderSide(color: Colors.blue),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 188, 209, 228),
                                ),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                              ),
                              child: const Text(
                                'View',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
      ],
    ),
  );
}

void ohsdetailpagefunction(BuildContext context, data) {
  print('Opening details page for notification: ${data.title}');
}

void notificationdetailpagefunction(BuildContext context, data) {
  context.router.pushNamed(RouteNames.notificationdetailpage);
  context.router.push(NotificationDetailRoute(data: data));
}
