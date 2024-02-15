import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_additional_card.dart';
import 'package:enviro_mobile_application/viewmodel/semi_trailor_page/semi_trailor_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_search_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SemiTrailorPage extends StatelessWidget {
  const SemiTrailorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            children: [
              cmn_additional_card(),
              // _buildDateDropdown(),
              const SizedBox(height: 16.0),
              common_search_widget(),
              const SizedBox(height: 16.0),
              Observer(
                builder: (BuildContext context) {
                  return Expanded(
                    child: ListView.separated(
                      itemCount:
                          vmtrailor.semitrailorPageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12.0),
                      itemBuilder: (context, index) {
                        var data =
                            vmtrailor.semitrailorPageResponse.data?[index];
                        return _buildJobCard(
                          registrationno: data?.registration ?? "",
                          RegoDue: data?.editedDateTime ?? "",
                          Type: data?.types ?? "",
                          year: data?.year ?? "",
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

  Widget _buildDateDropdown() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.grey),
            ),
            child: DropdownButton<String>(
              items:
                  <String>['2025', '2026', '2027', '2028'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
              hint: Text('2024'),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: Colors.grey),
            ),
            child: DropdownButton<String>(
              items:
                  <String>['Feb', 'March', 'April', 'May'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
              hint: Text('Jan'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJobCard({
    required String registrationno,
    required dynamic RegoDue,
    required String Type,
    required dynamic year,
  }) {
    return Container(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.only(left: 16.0, right: 16),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0XFF949494),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "Registration no : $registrationno",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                    width: 87,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0XFF949494),
                        ),
                      ),
                      onPressed: () {
                        print('vgjhsdvbsjhdb');
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
                        child: Text(
                          'Folders',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Text(
                    "RegoDue            : $RegoDue",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "Type                   : $Type",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "Year                   : $year",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}
