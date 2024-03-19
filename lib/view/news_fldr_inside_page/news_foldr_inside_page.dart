import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/oh&snews_folder/oh&snews_fldr_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_news_folder/oh&s_news_fldr_view_model.dart';

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
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              right: 18.0,
              top: 18.0,
              bottom: 8.0,
            ),
            child: Observer(builder: (_) {
              final response =
                  vmohsnewsfolder.newspagefolderinsideResponse.data;
              if (response != null) {
                final List<OhsNewsfldrRespModelFolder> folders =
                    response.folders;
                if (folders.isNotEmpty) {
                  final List<FolderFolder> subFolders = folders[0].folders;
                  if (subFolders.isNotEmpty) {
                    final String folderName = subFolders[0].name;
                    return Text(
                      folderName,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    );
                  }
                }
              }
              return const SizedBox();
            }),
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
                  onPressed: () {
                    _showMyfolderDialog(context);
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    ' folders+',
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
              final response =
                  vmohsnewsfolder.newspagefolderinsideResponse.data;
              if (response != null) {
                final List<OhsNewsfldrRespModelFolder> folders =
                    response.folders;
                if (folders.isNotEmpty) {
                  final List<FolderFolder> subFolders = folders[0].folders;
                  return ListView.separated(
                    shrinkWrap: true,
                    itemCount: subFolders.length,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(height: 6.0),
                    itemBuilder: (BuildContext context, int index) {
                      final folderName = subFolders[index].name;
                      return _buildCard(folderName, context);
                    },
                  );
                }
              }
              return const SizedBox();
            }),
          ),
        ],
      ),
    );
  }

  Future<void> _showMyfolderDialog(BuildContext context) async {
    TextEditingController textFieldController1 = TextEditingController();
    TextEditingController textFieldController2 = TextEditingController();
    TextEditingController textFieldController3 = TextEditingController();
    TextEditingController textFieldController4 = TextEditingController();

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('New Folder'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 17),
                SizedBox(
                  height: 30,
                  child: TextField(
                    controller: textFieldController4,
                    decoration: const InputDecoration(
                      labelText: 'Untitled folder',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10))), // Add border to the text field
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'Create',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
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
