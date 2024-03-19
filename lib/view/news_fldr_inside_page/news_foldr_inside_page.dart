import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_news_folder/oh&s_news_fldr_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class NewsPageInsidePage extends StatelessWidget {
  const NewsPageInsidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Folders',
          textAlign: TextAlign.left,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 18.0,
              right: 18.0,
              top: 18.0,
              bottom: 8.0,
            ),
            child: Text(
              'Your Text Here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Folder +',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Files +',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Expanded(
            child: Observer(builder: (_) {
              return ListView.separated(
                shrinkWrap: true,
                itemCount: vmohsnewsfolder.newspagefolderinsideResponse.data
                            ?.folders.isEmpty ??
                        true
                    ? 0
                    : vmohsnewsfolder.newspagefolderinsideResponse.data
                            ?.folders[0].folders.length ??
                        0,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 6.0),
                itemBuilder: (BuildContext context, int index) {
                  var data = vmohsnewsfolder.newspagefolderinsideResponse.data
                      ?.folders[0].folders[index];

                  if (data != null) {
                    String folderName = data.name;
                    return _buildCard(folderName, context);
                  } else {
                    return Container();
                  }
                },
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String folderName, BuildContext context) {
    return Container(
      height: 57,
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.folder, color: Colors.black26),
              Expanded(
                child: Center(
                  child: Text(
                    folderName,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
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
            ],
          ),
        ),
      ),
    );
  }
}
