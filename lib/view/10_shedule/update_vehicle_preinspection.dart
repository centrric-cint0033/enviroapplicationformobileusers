import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class UpdateVehiclepreinspectionPage extends StatelessWidget {
  const UpdateVehiclepreinspectionPage({Key? key, required this.index})
      : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Add Pre-Inspection'),
      ),
      body: SingleChildScrollView(
        padding: screenWidth,
        child: Observer(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.router.pop();
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Appthemes.cPrimary),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                    )),
                child: const Text(
                  'Back',
                  style: TextStyle(color: Appthemes.cPrimary),
                ),
              ),
              sized0hx10,
              expandedRowShowText(
                "Date and Time",
                DateFormat('dd-MM-yyyy hh:mm a').format(DateTime.now()),
              ),
              sized0hx10,
              expandedRowShowText(
                "Vehicle Registration",
                vmSchedule.sheduleweekResponse.data?[index].vehicle
                        ?.toString() ??
                    '',
              ),
              requiredRowWidget("Odometer", "",
                  fromType: true, controller: vmSchedule.odometerCntrller),
              requiredRowWidget(
                "Driver's name",
                "${vmSchedule.sheduleweekResponse.data?[index].drivers?[0].name}",
                fromType: false,
              ),
              requiredRowWidget("Hour Meter Start", "",
                  fromType: true, controller: vmSchedule.hoursMeterCntrller),
              cmCheckBoxRow("I am Fit for Work", vmSchedule.checkboxValue,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValue(value);
                }
              }),
              cmCheckBoxRow(
                  "I have approriate valid  licence", vmSchedule.checkboxValue2,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValue2(value);
                }
              }),
              cmCheckBoxRow(
                  "I have approruiate  licence", vmSchedule.checkboxValue3,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValue3(value);
                }
              }),
              sized0hx05,
              const Text(
                'Pre-Start checklist- All fields are Mandatory(NO obvious Defect)(X-Fault identified)& N/A not applicable',
                style: TextStyle(fontSize: 12),
              ),
              sized0hx10,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Category "A" Fault: Vehicle ',
                              style: TextStyle(color: Colors.grey.shade700),
                            ),
                            const TextSpan(
                              text: ' MUST NOT be operated  ',
                              style: TextStyle(color: Colors.red),
                            ),
                            const TextSpan(
                              text: 'until fault is rectified',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Category "B" Fault: Vehicle ',
                              style: TextStyle(color: Colors.grey.shade700),
                            ),
                            const TextSpan(
                              text: ' May be operated ',
                              style: TextStyle(color: Colors.blue),
                            ),
                            const TextSpan(
                              text: ' corrective action is required',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              cmCheckBoxRow2(
                context,
                "Engine Oil steel",
                vmSchedule.greenChecked,
                onChanged: (bool? value) {
                  if (value != null && value) {
                    vmSchedule.showPopup(context);
                  }
                },
              ),
              cmCheckBoxRow2(context, "Warning System", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Steering", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "SafEty/Emerg Stops", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Hand Break Alarm", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "PTO/Vac.Pumb", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Horn", false, onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Rev alarm/Camera", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Lights-Head", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Lights-Tail", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Light-beacons", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Hazards Lights", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Rims & Wheel Nuts", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Coolant", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Wheels & Tyres", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Mirrors & Windscreen", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Structure & Bodywork", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Wipers", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Fuel Level Pumb", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Fuel Level Truck", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Seat/Seat Belt", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Park Barke/Trailer", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Foot Brake", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              cmCheckBoxRow2(context, "Electrical", false,
                  onChanged: (bool? value) {
                if (value != null && value) {
                  vmSchedule.showPopup(context);
                }
              }),
              const Text('Accessories &Fittings'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hoses',
                  ),
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {
                      if (value != null && value) {
                        vmSchedule.showPopup(context);
                      }
                      print('Checkbox state changed to: $value');
                    },
                    checkColor: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Fittings',
                  ),
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {
                      if (value != null && value) {
                        vmSchedule.showPopup(context);
                      }
                      print('Checkbox state changed to: $value');
                    },
                    checkColor: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'First Aid Kit',
                  ),
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {
                      if (value != null && value) {
                        vmSchedule.showPopup(context);
                      }
                      print('Checkbox state changed to: $value');
                    },
                    checkColor: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'PPE',
                  ),
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {
                      if (value != null && value) {
                        vmSchedule.showPopup(context);
                      }
                      print('Checkbox state changed to: $value');
                    },
                    checkColor: Colors.red,
                  ),
                ],
              ),
              const Text(
                'Fire Estingusher(Date Collabrated)',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'GoldenHose',
                  ),
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {
                      if (value != null && value) {
                        vmSchedule.showPopup(context);
                      }
                      print('Checkbox state changed to: $value');
                    },
                    checkColor: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Gattic LItters',
                  ),
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {
                      if (value != null && value) {
                        vmSchedule.showPopup(context);
                      }
                      print('Checkbox state changed to: $value');
                    },
                    checkColor: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Bucket/Rags',
                  ),
                  Observer(builder: (_) {
                    return Checkbox(
                      side: const BorderSide(color: Colors.red),
                      value: vmSchedule.greenchecked,
                      onChanged: (bool? value) {
                        if (value != null && value) {
                          vmSchedule.showPopup(context);
                        }
                        print('Checkbox state changed to: $value');
                      },
                      checkColor: Colors.red,
                    );
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Split Kit',
                  ),
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {
                      if (value != null && value) {
                        vmSchedule.showPopup(context);
                      }
                    },
                    checkColor: Colors.red,
                  ),
                ],
              ),
              sized0hx10,
              Container(
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
                        'Any Faults to report( of any category)& Any additional information',
                        style: TextStyle(),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Type Here...',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Action Taken By"),
                  Text("Authorised By"),
                ],
              ),
              sized0hx40,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {},
                    checkColor: Colors.red,
                  ),
                  const Expanded(
                    child: Text(
                      'I have conducted the abouve pre_start  checklist and satisfied that the vehiclke is safe and readyb to operatate.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              sized0hx10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(
                    side: const BorderSide(color: Colors.red),
                    value: false,
                    onChanged: (bool? value) {},
                    checkColor: Colors.red,
                  ),
                  const Expanded(
                    child: Text(
                      'I have conducted the abouve pre_start  checklist and satisfied that the vehiclke is safe and readyb to operatate.',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
              sized0hx10,
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    shedulecommentfunction(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.blue),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

void shedulecommentfunction(BuildContext context) {
  print('calenderclicked');
  context.router.pushNamed(RouteNames.rshedulecommandstatus);
}

Widget requiredRowWidget(String? text1, String? text2,
    {TextEditingController? controller, required bool fromType}) {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1 ?? "",
              style: TextStyle(fontSize: 10.w),
            ),
            Icon(
              Icons.star,
              size: 9.w,
              color: Colors.red,
            ),
          ],
        ),
      ),
      fromType
          ? Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    ":",
                    style: TextStyle(fontSize: 10.w),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            )
          : Expanded(
              flex: 1,
              child: Row(
                children: [
                  Text(
                    ":",
                    style: TextStyle(fontSize: 10.w),
                  ),
                  Text(
                    text2 ?? "",
                    style: TextStyle(fontSize: 10.w),
                  ),
                ],
              ),
            ),
    ],
  );
}

Widget cmCheckBoxRow(String text, bool value,
    {required void Function(bool?)? onChanged}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Checkbox(
        side: const BorderSide(color: Colors.red),
        value: value,
        onChanged: onChanged,
        checkColor: Colors.red,
        activeColor: Colors.white,
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      Text(text),
      Icon(
        Icons.star,
        size: 9.w,
        color: Colors.red,
      ),
    ],
  );
}

Widget cmCheckBoxRow2(BuildContext context, String text, bool value,
    {required void Function(bool?)? onChanged}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text),
      Observer(builder: (_) {
        return Checkbox(
          activeColor: Colors.white,
          side: const BorderSide(color: Colors.black),
          value: value,
          onChanged: onChanged,
          checkColor: Colors.green,
        );
      }),
    ],
  );
}
