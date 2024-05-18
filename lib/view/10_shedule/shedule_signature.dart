// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';

@RoutePage()
class SheduleSignaturePage extends StatelessWidget {
  SheduleSignaturePage({
    this.picker,
    this.pickedtypes,
    required this.id,
    super.key,
  });
  Uint8List? picker;
  final TextEditingController _controllerTypeofwaste = TextEditingController();
  final TextEditingController _signNameController = TextEditingController();
  final TextEditingController _controllerPonumber = TextEditingController();
  final TextEditingController _controllerWateliters = TextEditingController();
  final SignatureController _signaturecontroller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
    onDrawEnd: () {
      vmJobcard.updateSignatureButtonColor(state: true);
    },
  );

  Uint8List? pickedtypes;
  final int id;
  List? pickedFiles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Weigh bridge Required:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Observer(builder: (_) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CmButton(
                                  width: 108,
                                  color: Colors.blue,
                                  onPressed: () async {
                                    vmJobcard.pickFilefromphone();
                                  },
                                  text: 'AddFile ',
                                ),
                                const SizedBox(width: 18),
                                CmButton(
                                  width: 118,
                                  color: Colors.blue,
                                  onPressed: () async {
                                    vmJobcard.pickImageFromsignatureCamera();
                                  },
                                  text: 'Camera ',
                                ),
                              ],
                            ),
                            Observer(builder: (_) {
                              return SingleChildScrollView(
                                scrollDirection: Axis
                                    .horizontal, // Set scroll direction to horizontal
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 57.0),
                                  child: Observer(builder: (_) {
                                    if (vmJobcard.pickedFiles.isNotEmpty) {
                                      return Row(
                                        children:
                                            vmJobcard.pickedFiles.map((file) {
                                          final icon = returnLogo(
                                              file.name, file.path, file.size);
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                top: 8, right: 2),
                                            child: SizedBox(
                                              height: 70,
                                              width: 140,
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                ),
                                                child: ListTile(
                                                  onLongPress: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              "Delete File"),
                                                          content: Text(
                                                              "Are you sure you want to delete ${file.name}?"),
                                                          actions: <Widget>[
                                                            TextButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: const Text(
                                                                  "Cancel"),
                                                            ),
                                                            TextButton(
                                                              onPressed: () {
                                                                vmJobcard
                                                                    .pickedFiles
                                                                    .remove(
                                                                        file);
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: const Text(
                                                                  "Delete"),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                  title: Text(
                                                    file.name,
                                                    style: const TextStyle(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                  leading: icon,
                                                  subtitle: Text(
                                                    file.extension!,
                                                    style: const TextStyle(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    OpenFile.open(
                                                      file.path,
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      );
                                    } else {
                                      return const Text(
                                        'No files selected',
                                        style: TextStyle(fontSize: 16),
                                      );
                                    }
                                  }),
                                ),
                              );
                            }),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ExpansionTile(
                title: const Text(
                  'Job Details',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  ListTile(
                    title: Container(
                      height: 83,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 247, 209),
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Type of waste:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              onChanged: (value) {
                                _controllerTypeofwaste.text = value;
                                print('pooo$_controllerTypeofwaste');
                              },
                              decoration: const InputDecoration(
                                hintText:
                                    'Any change in waste is mentioned here...',
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 83,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 247, 209),
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'waste Liters:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              onChanged: (value) {
                                _controllerWateliters.text = value;
                                print('pooo$_controllerWateliters');
                              },
                              controller: _controllerWateliters,
                              decoration: const InputDecoration(
                                hintText:
                                    'Any change in waste is mentioned here...',
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 83,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 247, 209),
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Po Number:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              onChanged: (value) {
                                _controllerPonumber.text = value;
                                print('pooo$_controllerPonumber');
                              },
                              controller: _controllerPonumber,
                              decoration: const InputDecoration(
                                hintText: 'Purchase order Number...',
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Container(
                      height: 83,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 247, 209),
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'SignName:',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              onChanged: (value) {
                                _signNameController.text = value;

                                print(
                                    'azzzzzzzzzzzzzzzzzzzzzzzzz$_signNameController');
                              },
                              decoration: const InputDecoration(
                                hintText: 'Sign name...',
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Change in waste type and its liters will be uploaded with client\'s signature',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 430,
                height: 288,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Please provide your signature:',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: Signature(
                            controller: _signaturecontroller,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                    Positioned(
                      bottom: 20,
                      right: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Observer(builder: (_) {
                            return CmButton(
                              color: vmJobcard.signColor,
                              onPressed: () async {
                                Uint8List? pickedTypes =
                                    await _signaturecontroller.toPngBytes();

                                if (pickedTypes != null) {
                                  final tempDir = await getTemporaryDirectory();

                                  File file = await File(
                                          '${tempDir.path}/${DateTime.now()}.png')
                                      .create();

                                  await file.writeAsBytes(pickedTypes);

                                  print('Signature saved to: ${file.path}');
                                  print('Reset ID: $id');

                                  vmJobcard.updateSignatureButtonColor(
                                      state: false);

                                  _signaturecontroller.clear();
                                  picker = pickedTypes;
                                  print('shamon$picker');
                                } else {
                                  print('No signature to save.');
                                }
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        side: const BorderSide(
                                            color: Colors.black),
                                      ),
                                      content: const Text(
                                        'Uploading your signature',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      actions: <Widget>[
                                        Observer(builder: (_) {
                                          return TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('OK'),
                                          );
                                        }),
                                      ],
                                    );
                                  },
                                );
                              },
                              text: 'save',
                            );
                          }),
                          const SizedBox(width: 10),
                          Observer(builder: (_) {
                            return CmButton(
                              color: vmJobcard.signColor,
                              onPressed: () async {
                                _signaturecontroller.clear();
                              },
                              text: 'Reset',
                            );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Comments',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              if (pickedtypes != null) Image.memory(pickedtypes!),
              const SizedBox(height: 10),
              SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.black12,
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Enter your comments',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {},
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                  maxLines: null,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Observer(builder: (_) {
                return Padding(
                  padding: const EdgeInsets.only(left: 128.0),
                  child: CmButton(
                    width: 105,
                    color: vmJobcard.signColor,
                    onPressed: () {
                      print('derly$picker!');
                      vmJobcard.shedulesignatureviewmodelfunction(
                          image: picker!,
                          extracted_waste_type: _controllerTypeofwaste.text,
                          extracted_litres_of_waste: _controllerWateliters.text,
                          purchase_order_number: _controllerPonumber.text,
                          signature_name: _signNameController.text,
                          id: id,
                          pickedFiles: vmJobcard.pickedFiles);
                      vmJobcard.updateSignatureButtonColor(state: true);
                      _signaturecontroller.clear();
                      log(vmJobcard.signatureResponse.toString());
                    },
                    text: 'Submit',
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  returnLogo(String filePath, dynamic image, int? filesize) {
    List<String>? parts = filePath.split('.');
    // if (parts.length < 2) {
    //   return const Icon(
    //     Icons.error_outline,
    //     color: Colors.red,
    //   );
    // }

    String? fileExtension = parts.last.toLowerCase();
    print("File extension: $fileExtension");

    switch (fileExtension) {
      case 'jpg':
        if (vmJobcard.pickedFiles.isNotEmpty) {
          return SizedBox(
            height: 60,
            width: 40,
            child: Image.file(File(image)),
          );
        } else {
          return const Text("Image file is null");
        }
      case 'jpeg':
        if (vmJobcard.pickedFiles.isNotEmpty) {
          return SizedBox(
            height: 60,
            width: 40,
            child: Image.file(File(image)),
          );
        } else {
          return const Text("Image file is null");
        }
      case 'png':
        if (vmJobcard.pickedFiles.isNotEmpty) {
          return SizedBox(
            height: 60,
            width: 40,
            child: Image.file(File(image)),
          );
        } else {
          return const Text("Image file is null");
        }
      case 'gif':
        if (vmJobcard.pickedFiles.isNotEmpty) {
          return SizedBox(
            height: 60,
            width: 40,
            child: Image.file(File(image)),
          );
        } else {
          return const Text("Image file is null");
        }

      case 'pdf':
        return const Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
        );
      case 'PDF':
        return const Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
        );
      case 'doc':
        return const Icon(
          Icons.insert_drive_file,
          color: Colors.black12,
        );
      case 'mp4':
        return const Icon(
          Icons.video_collection,
          color: Colors.blue,
        );
      case 'mov':
        return const Icon(
          Icons.video_file,
          color: Colors.red,
        );
      case 'avi':
        return const Icon(
          Icons.video_file,
          color: Colors.red,
        );
      case 'mkv':
        return const Icon(
          Icons.video_file,
          color: Colors.red,
        );
      default:
        return const Icon(
          Icons.error_outline,
          color: Colors.red,
        );
    }
  }
}
