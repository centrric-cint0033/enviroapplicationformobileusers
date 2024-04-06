import 'package:enviro_mobile_application/model/10_team/team_designtion_res_model/designation.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DesignationDownWidget extends StatelessWidget {
  const DesignationDownWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (context) {
          final res = vmTeam.designationsResponse;
          List<Designation> designations = res.data?.designations ?? [];
          // TaxResModel? selectedTax;
          // if (tax.isNotEmpty) {
          //   selectedTax = productTax ?? productViewModel.tax ?? tax[0];
          // }
          return Padding(
            padding: EdgeInsets.only(right: 28.w),
            child: DropdownButtonFormField<Designation>(
              items: designations.map(
                (Designation designation) {
                  return DropdownMenuItem(
                    value: designation,
                    child: Row(
                      children: <Widget>[
                        Text(
                          designation.userType ?? "",
                        )
                      ],
                    ),
                  );
                },
              ).toList(),
              onChanged: (newValue) {},
              // value: selectedTax,
              decoration: const InputDecoration.collapsed(hintText: ''),
            ),
          );
        },
      ),
    );
  }
}
