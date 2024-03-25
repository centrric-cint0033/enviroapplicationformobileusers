import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';

import 'package:enviro_mobile_application/widgets/cmcustomformfield.dart';
import 'package:enviro_mobile_application/widgets/cmappbar.dart';
import 'package:enviro_mobile_application/utilis/imagepath.dart';

@RoutePage()
class IntranetPage extends StatelessWidget {
  const IntranetPage({Key? key});

  void _handleIntranetButtonTap() {
    print('Right button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const cmn_leading_icon(),
        title: cmnTitleWidget('Intranet'),
        actions: cmn_action_icon,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, right: 18),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('Folders'),
                  ),
                  TextButton(
                    onPressed: _handleIntranetButtonTap,
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
            ),
            const SizedBox(
              height: 25,
            ),
            Cmformfield(
              borderColor: Colors.black12,
              cursorHeight: 25,
              hinttext: 'Search by folder name',
              height: 28,
              width: double.infinity,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  _buildCard('EnviroHill'),
                  _buildCard('Enviro digital mesh'),
                  _buildCard('Enviro pumps'),
                  _buildCard('Enviro waste'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String cardText) {
    return Container(
      height: 66,
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
                    cardText,
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
                      print('Delete button tapped!');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete, color: Colors.black26),
                    onPressed: () {
                      print('Edit button tapped!');
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
