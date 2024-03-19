import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmcustomformfield.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_news_folder/oh&s_news_fldr_view_model.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_page/oh&s_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../Routepage/routespage.dart';
import '../../../../model/oh&snews_folder/oh&snews_fldr_model.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => _handlegeneralButtonTap(context),
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(color: Colors.blue),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 188, 209, 228),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Add New+',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Observer(
                builder: (_) {
                  return SizedBox(
                    height: 400,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: vmohsnews.newspageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12.0),
                      itemBuilder: (context, index) {
                        var data = vmohsnews.newspageResponse.data?[index];
                        return GestureDetector(
                          onTap: () => _handleViewButtonTap(context),
                          child: Container(
                            height: 120,
                            width: double.infinity,
                            child: Card(
                              color: const Color.fromARGB(255, 188, 209, 228),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 94),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                                MaterialStateProperty.all<
                                                    Color>(
                                              const Color.fromARGB(
                                                  255, 188, 209, 228),
                                            ),
                                            shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                            ),
                                          ),
                                          child: const Text(
                                            'View',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Folders'),
                  ),
                  TextButton(
                    onPressed: _handleButtonTap,
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.blue),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: const Text(
                      'Add Folder +',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Container(
                height: 50,
                width: double.infinity,
                child: Cmformfield(
                  borderColor: Colors.black12,
                  cursorHeight: 15,
                  hinttext: 'Search by folder name',
                  width: double.infinity,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Observer(builder: (_) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: vmohsnewsfolder
                              .newspagefolderResponse.data?.folders.isEmpty ??
                          true
                      ? 0
                      : vmohsnewsfolder.newspagefolderResponse.data?.folders[0]
                              .folders.length ??
                          0,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 6.0),
                  itemBuilder: (BuildContext context, int index) {
                    var data = vmohsnewsfolder
                        .newspagefolderResponse.data?.folders[0].folders[index];

                    if (data != null) {
                      String folderName = data.name;
                      return _buildCard(folderName, context);
                    } else {
                      return Container();
                    }
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCard(String folderName, BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('cdvfsdg');
        newsfolderclickfunction(context, 1745);
      },
      child: Container(
        height: 57,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.folder, color: Colors.black26),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        folderName,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.black26),
                        onPressed: () {
                          print('Edit button tapped!');
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.black26),
                        onPressed: () {
                          print('Delete button tapped!');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handlegeneralButtonTap(BuildContext context) {
    print('Add New button tapped!');
  }

  void _handleViewButtonTap(BuildContext context) {
    print('View button tapped!');
  }

  void _handleButtonTap() {
    print('Add Folder button tapped!');
  }

  void newsfolderclickfunction(BuildContext context, int id) async {
    context.router.pushNamed(RouteNames.newsfolderinsidepage);
    vmohsnewsfolder.newspagefolderinsidefunction(id);
  }
}
