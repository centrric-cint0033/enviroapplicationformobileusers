import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';

class WWResponseHandler extends StatelessWidget {
  final ApiResponse<dynamic> data;
  final bool isEmpty;
  final Function() onTap;
  final Widget child;
  const WWResponseHandler({
    super.key,
    required this.data,
    required this.isEmpty,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return data.loading
        ? wwCustomLoader()
        : data.errors != null
            ? Center(child: wwErrorData(onTap: onTap, mainFailure: data.errors))
            : isEmpty
                ? const Center(child: Text('Empty'))
                : child;
  }
}
