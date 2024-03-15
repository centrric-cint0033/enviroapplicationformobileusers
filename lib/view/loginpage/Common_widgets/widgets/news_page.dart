import 'package:enviro_mobile_application/viewmodel/oh&s_page/oh&s_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => _handleAddNewButtonTap(context),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.blue),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 188, 209, 228),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Add New +',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              Observer(
                builder: (_) {
                  return SizedBox(
                    height: 400, // Adjust the height as needed
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: vmohsnews.newspageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12.0),
                      itemBuilder: (context, index) {
                        var data = vmohsnews.newspageResponse.data?[index];
                        return Container(
                          height: 120,
                          width: double.infinity,
                          child: Card(
                            color: const Color.fromARGB(255, 188, 209, 228),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 94),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        data?.title ?? '',
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text(
                                        data?.created_by ?? '',
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                      trailing: TextButton(
                                        onPressed: () =>
                                            _handleViewButtonTap(context),
                                        style: ButtonStyle(
                                          side: MaterialStateProperty.all<
                                              BorderSide>(
                                            const BorderSide(
                                                color: Colors.blue),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            const Color.fromARGB(
                                                255, 188, 209, 228),
                                          ),
                                          shape: MaterialStateProperty.all<
                                              OutlinedBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          'View',
                                          style: TextStyle(color: Colors.blue),
                                        ),
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleAddNewButtonTap(BuildContext context) {
    // Your logic for handling the "Add New" button tap goes here
    print('Add New button tapped!');
  }

  void _handleViewButtonTap(BuildContext context) {
    // Your logic for handling the "View" button tap goes here
    print('View button tapped!');
  }
}
