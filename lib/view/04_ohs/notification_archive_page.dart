// import 'package:auto_route/auto_route.dart';
// import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
// import 'package:enviro_mobile_application/utilis/constant.dart';
// import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
// import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';



// class ArchiveNotificationPage extends StatelessWidget {
//   const ArchiveNotificationPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // WidgetsBinding.instance.addPostFrameCallback(
//     //   (timeStamp) {
//     //     vmTeam.currentEmployeePagination();
//     //   },
//     // );
//     return Scaffold(
//         body: Column(children: [
//       sized0hx10,
//       WWTextField(
//         controller: vmTeam.currentEmployeeSearchCntrlr,
//         onChanged: (v) => vmTeam.onTextChanged(() => v.isEmpty
//             ? vmTeam.getCurrentEmployee()
//             : vmTeam.currentEmployeeSearchApi(v)),
//         suffixTap: () {},
//         hintText: 'Search Employee',
//       ),
//       sized0hx10,
//       Observer(builder: (_) {
//         final res = vmTeam.currentEmployeeResponse;
//         return Expanded(
//             child: WWResponseHandler(
//                 data: res,
//                 isEmpty: res.data?.isEmpty ?? true,
//                 onTap: () => vmTeam.getCurrentEmployee(),
//                 child: CurrentEmployeeListWidget(loading: res.loading)));
//       }),
//     ]));
//   }
// }

// class ArchiveListWidget extends StatelessWidget {
//   const ArchiveListWidget({super.key, required this.loading});
//   final bool loading;
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//         itemCount: vmTeam.currentEmployeeResponse.data!.length + 1,
//         controller: vmTeam.currentEmployeeController,
//         separatorBuilder: (BuildContext context, int index) => sized0hx10,
//         itemBuilder: (context, index) {
//           return index == vmTeam.currentEmployeeResponse.data?.length
//               ? vmTeam.currentEmployeeResponse.paginationLoading
//                   ? const CupertinoActivityIndicator()
//                   : const SizedBox.shrink()
//               : listTile(context,
//                   data: vmTeam.currentEmployeeResponse.data?[index], onTap: () {
//                   vmTeam.getTeamProfileEmployeeDetails(
//                       employeeID:
//                           vmTeam.currentEmployeeResponse.data?[index].id ?? 0);
//                   vmTeam.getTeamFolders(
//                       id: vmTeam.currentEmployeeResponse.data?[index].id ?? 0,
//                       parentFolderId: 1);
//                   context.router.push(TeamProfileRoute(
//                       id: vmTeam.currentEmployeeResponse.data?[index].id));
//                 });
//         });
//   }
// }
