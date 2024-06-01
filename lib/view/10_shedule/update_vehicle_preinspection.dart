import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';

@RoutePage()
class UpdateVehiclepreinspectionPage extends StatelessWidget {
  const UpdateVehiclepreinspectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Add Preinspection'),
        actions: [notificationButton(context)],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue, backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.blue),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  textColor: Colors.black,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Observer(builder: (_) {
                        return Container(
                          child: expandedRowShowText2(
                              "Date and Time",
                              DateFormat.yMMMMd().format(vmJobcard
                                  .shedulecardResponse
                                  .data![index]
                                  .startDate!)),
                        );
                      }),
                      const SizedBox(height: 12),
                      Observer(builder: (_) {
                        return Container(
                          child: expandedRowShowText2(
                            "vehicle registration",
                            vmJobcard.sheduleweekResponse.data?[index].vehicle
                                    ?.toString() ??
                                '',
                          ),
                        );
                      }),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Odometer"),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 98.0),
                              child: TextField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                "Driver's name",
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.0),
                                child: Icon(
                                  Icons.star,
                                  size: 10,
                                  color: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 68.0),
                                child: Text(':azeem'),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Hours meter start"),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 38.0),
                              child: TextField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                                inputFormatters: [
                                  FilteringTextInputFormatter
                                      .singleLineFormatter
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Observer(builder: (_) {
                        return Row(
                          children: [
                            Checkbox(
                              side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.red,
                              ),
                              value: vmJobcard.checkboxValue,
                              onChanged: (bool? value) {
                                if (value != null) {
                                  vmJobcard.updateCheckboxValue(value);
                                }
                              },
                              checkColor: Colors.red,
                              activeColor: Colors.white,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                            ),
                            const Row(
                              children: [
                                Text(
                                  'I am Fit for Work',
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      }),
                      Observer(builder: (_) {
                        return Row(
                          children: [
                            Checkbox(
                              side: const BorderSide(color: Colors.red),
                              value: vmJobcard.checkboxValue2,
                              onChanged: (bool? value2) {
                                if (value2 != null) {
                                  vmJobcard.updateCheckboxValue2(value2);
                                }
                              },
                              checkColor: Colors.red,
                              activeColor: Colors.white,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                            ),
                            const Text('I have approriate valid  licence'),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Icon(
                                Icons.star,
                                size: 10,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        );
                      }),
                      Row(
                        children: [
                          Observer(builder: (_) {
                            return Checkbox(
                              side: const BorderSide(color: Colors.red),
                              value: vmJobcard.checkboxValue3,
                              onChanged: (bool? value) {
                                if (value != null) {
                                  vmJobcard.updateCheckboxValue3(value);
                                }
                              },
                              checkColor: Colors.red,
                              activeColor: Colors.white,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                            );
                          }),
                          const Text('I have approruiate  licence'),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Icon(
                              Icons.star,
                              size: 10,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      sized0hx05,
                      const Text(
                        ' pre-Start checklist- All fields are Mandatory(NO obvious Defect)(X-Fault identified)& N/A not applicable',
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
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Category A fault vehicle ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: ' MUST NOT be operated  ',
                                  style: TextStyle(color: Colors.red),
                                ),
                                TextSpan(
                                  text: 'until fault is rectified',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: ' Fault Vehicle ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: ' May be operated ',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                TextSpan(
                                  text: ' corrective action is required',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Engine Oil steel',
                          ),
                          Observer(builder: (_) {
                            return Checkbox(
                              side: const BorderSide(color: Colors.black),
                              value: vmJobcard.greenchecked,
                              onChanged: (bool? value) {
                                if (value != null && value) {
                                  _showPopup(context);
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
                            'Warning system',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Steering',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'safty/Emergy stops',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Hand break alarm',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'PTO/vac pumb',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Horn',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Rev/alarmcamera',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Lights head',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Lights tail',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Light beacons',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
                              }
                              print('Checkbox state changed to: $value');
                            },
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      sized0hx10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hazard lights',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Rims&wheelnuts',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Coolant',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Wheels&tyres',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Mirrors &windscreen',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Structure and bodywork',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'wipers',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Full level pumb',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Full level truck',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Seat/seatbelt',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'parkbeat/trailor',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Footbrake',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
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
                            'Electrical',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {
                              if (value != null && value) {
                                _showPopup(context);
                              }
                              print('Checkbox state changed to: $value');
                            },
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
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
                                _showPopup(context);
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
                                _showPopup(context);
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
                                _showPopup(context);
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
                                _showPopup(context);
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
                                _showPopup(context);
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
                                _showPopup(context);
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
                              value: vmJobcard.greenchecked,
                              onChanged: (bool? value) {
                                if (value != null && value) {
                                  _showPopup(context);
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
                                _showPopup(context);
                              }
                              print('Checkbox state changed to: $value');
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
                            print('dfdfdf');
                            shedulecommentfunction(context);
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.blue, backgroundColor: Colors.blue,
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
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void _showPopup(BuildContext context) {
  bool blueChecked = true;
  bool redChecked = true;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const BorderSide(color: Colors.black),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Text(
                  'No issue',
                  style: TextStyle(color: Colors.green),
                ),
                Checkbox(
                  activeColor: Colors.green,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: vmJobcard.greenchecked,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Category A fault',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Checkbox(
                  activeColor: Colors.red,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: redChecked,
                  onChanged: (value) {
                    blueChecked = value!;
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('Category B fault',
                    style: TextStyle(color: Colors.blue)),
                Checkbox(
                  activeColor: Colors.blue,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: blueChecked,
                  onChanged: (value) {
                    blueChecked = value!;
                  },
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

void shedulecommentfunction(BuildContext context) {
  print('calenderclicked');
  context.router.pushNamed(RouteNames.rshedulecommandstatus);
}
