import 'dart:io';
import 'dart:typed_data';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/schedule_image_res_model/schedule_image_res_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/schedule_status_res_model/schedule_status_res_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_comnt_resp_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_sign_res_model.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

import '../../utilis/image_picker_service/image_file_picker.dart';
part 'shedule_page_view_model.g.dart';

final vmSchedule = getIt<ScheduleViewModel>();

@injectable
@lazySingleton
class ScheduleViewModel extends ScheduleViewModelBase with _$ScheduleViewModel {
  ScheduleViewModel(super.jobcardService);
}

abstract class ScheduleViewModelBase with Store {
  final IScheduleService scheduleService;

  ScheduleViewModelBase(this.scheduleService);

  @observable
  Color? signColor = Colors.white;
  @observable
  Color? textColor = Colors.white;
  @action
  Future<void> updateSignatureButtonColor({bool state = false}) async {
    if (state == true) {
      signColor = Appthemes.cPrimary;
      textColor = Colors.white;
    } else if (state == false) {
      signColor = Colors.white;
      textColor = Colors.grey.shade400;
    }
  }

  TextEditingController odometerCntrller = TextEditingController();
  TextEditingController hoursMeterCntrller = TextEditingController();
  TextEditingController faultsReportCntrller = TextEditingController();
  final TextEditingController commentController = TextEditingController();
  @observable
  bool containerHeight = false;
  @observable
  bool showSubmitButton = false;
  @observable
  int driversIndex = 0;
  @observable
  List<PlatformFile> pickedFiles = [];
  @observable
  DateTime focusedDay = DateTime.now();
  @observable
  DateTime? selectedDay;
  @observable
  DateTime? selectedFireExtinguisherDate;
  @observable
  DateTime? selectedDepartedEnviroDate;
  @observable
  DateTime? selectedStartingJobDate;
  @observable
  DateTime? selectedFinishedJobDate;
  @observable
  DateTime? selectedCompletedDate;
  @observable
  DateTime? selectedArrivedWasteDepotDate;
  @observable
  DateTime? selectedDepartedWasteDepotDate;
  @observable
  DateTime? selectedArrivedEnviroDate;
  @observable
  String? pickedCameraImage = "";
  @observable
  List<String>? pickedCameraImageList = [];
  @observable
  ImageFilePickerModel? pickedCameraImage2;
  @observable
  String? pickedGalleryImage = "";
  @observable
  List<String>? pickedGalleryImageList = [];
  @observable
  bool isImageSelected = true;

  @observable
  File? selectedcameraImage;
  @observable
  File? selectedsignaturecameraImage;
  @observable
  File? selectedImage;
  @observable
  bool checkboxValue = false;
  @observable
  bool checkboxValue2 = false;
  @observable
  bool checkboxValue3 = false;
  @observable
  List<String> pickedImages = [];
  @action
  void updateProductImageData({ImageFilePickerModel? image}) {
    pickedCameraImage2 = image!;
  }

  @observable
  ApiResponse<JobCardRespModel> jobcardResponse =
      ApiResponse<JobCardRespModel>();

  @action
  Future<void> jobcardviewmodelfunction() async {
    jobcardResponse = jobcardResponse.copyWith(error: null, loading: true);

    final result = await scheduleService.jobcardservicefunction();
    return result.fold(
      (l) {
        jobcardResponse = jobcardResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        jobcardResponse = jobcardResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<SheduleCardRespModel>> shedulecardResponse =
      ApiResponse<List<SheduleCardRespModel>>();

  @action
  Future<void> shedulecardviewmodelfunction() async {
    shedulecardResponse =
        shedulecardResponse.copyWith(error: null, loading: true);

    final result = await scheduleService.shedulecardservicefunction();
    return result.fold(
      (l) {
        shedulecardResponse = shedulecardResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        shedulecardResponse = shedulecardResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<SheduleCardRespModel>> sheduleweekResponse =
      ApiResponse<List<SheduleCardRespModel>>();

  @action
  Future<void> shedulecardviewmodelweekfunction() async {
    sheduleweekResponse =
        sheduleweekResponse.copyWith(error: null, loading: true);

    final result = await scheduleService.shedulecardserviceweekfunction();
    return result.fold(
      (l) {
        sheduleweekResponse = sheduleweekResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        sheduleweekResponse = sheduleweekResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<SheduleSignatureModel> signatureResponse =
      ApiResponse<SheduleSignatureModel>();

  @action
  Future<void> shedulesignatureviewmodelfunction({
    required int id,
    required List<PlatformFile> pickedFiles,
    required Uint8List image,
    required String signatureName,
    required String purchaseOderNo,
    required String extractedWasteType,
    required String extractedLitres,
  }) async {
    signatureResponse = signatureResponse.copyWith(errors: null, loading: true);

    final result = await scheduleService.shedulesignatureserviceapi(
        image: image,
        id: id,
        pickedFiles: pickedFiles,
        signatureName: signatureName,
        purchaseOderNo: purchaseOderNo,
        extractedLitres: extractedLitres,
        extractedWasteType: extractedWasteType);
    return result.fold(
      (l) {
        signatureResponse = signatureResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) {
        signatureResponse = signatureResponse.copyWith(
          data: r,
          errors: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<SheduleCommentModel> commentResponse =
      ApiResponse<SheduleCommentModel>();

  @action
  Future<void> shedulecommentviewmodelfunction(
      {required int id, required String comment}) async {
    commentResponse = commentResponse.copyWith(errors: null, loading: true);
    final result = await scheduleService.shedulecommentserviceapi(
        id: id, comment: comment);
    return result.fold(
      (l) {
        commentResponse = commentResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) {
        commentResponse = commentResponse.copyWith(
          data: r,
          errors: null,
          loading: false,
        );
        shedulecardviewmodelfunction();
        commentController.clear();
      },
    );
  }

  @observable
  ApiResponse<dynamic> deleteCommentResponse = ApiResponse<dynamic>();

  @action
  Future<void> deleteScheduleCommentServiceApi({required int id}) async {
    deleteCommentResponse =
        deleteCommentResponse.copyWith(errors: null, loading: true);
    commentResponse = commentResponse.copyWith(errors: null, loading: true);
    final result =
        await scheduleService.deleteScheduleCommentServiceApi(id: id);
    return result.fold(
      (l) {
        deleteCommentResponse = deleteCommentResponse.copyWith(
          error: l.keys.first,
          loading: false,
        );
        commentResponse =
            commentResponse.copyWith(errors: null, loading: false);
      },
      (r) {
        deleteCommentResponse = deleteCommentResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        commentResponse =
            commentResponse.copyWith(errors: null, loading: false);
        shedulecardviewmodelfunction();
      },
    );
  }

  @observable
  ApiResponse<dynamic> addPreInspectionScheduleResponse =
      ApiResponse<dynamic>();
  @action
  Future<void> updatePreInspectionSchedule(
      {required BuildContext context, required VehicleModel data}) async {
    addPreInspectionScheduleResponse =
        addPreInspectionScheduleResponse.copyWith(error: null, loading: true);

    final result =
        await scheduleService.updatePreInspectionSchedule(data: data);
    return result.fold(
      (l) {
        popupErrorData(context, mainFailure: l);
        addPreInspectionScheduleResponse =
            addPreInspectionScheduleResponse.copyWith(
          error: l.keys.first,
          loading: false,
        );
      },
      (r) {
        addPreInspectionScheduleResponse =
            addPreInspectionScheduleResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        shedulecardviewmodelweekfunction();
        context.router.pop();
        showToast(context, msg: "Successfully updated", color: Colors.green);
      },
    );
  }

  @observable
  ApiResponse<ScheduleStatusResModel> editScheduleStatusResponse =
      ApiResponse<ScheduleStatusResModel>();
  @action
  Future<void> editScheduleStatusApi(
      {required BuildContext context,
      required dynamic statusType,
      required String date,
      required String status,
      required int id}) async {
    editScheduleStatusResponse =
        editScheduleStatusResponse.copyWith(error: null, loading: true);

    final result = await scheduleService.editScheduleStatusApi(
        statusType: statusType, date: date, status: status, id: id);
    return result.fold(
      (l) {
        editScheduleStatusResponse = editScheduleStatusResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        editScheduleStatusResponse = editScheduleStatusResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        shedulecardviewmodelweekfunction();
      },
    );
  }

  @observable
  ApiResponse<ScheduleImageResModel> addImageScheduleResponse =
      ApiResponse<ScheduleImageResModel>();
  @action
  Future<void> addImageScheduleApi(
      {required BuildContext context,
      required int id,
      required String pickedFiles,
      required bool beforeOrAfterPic,
      required picType}) async {
    addImageScheduleResponse =
        addImageScheduleResponse.copyWith(error: null, loading: true);

    final result = await scheduleService.addImagesScheduleAPi(
        id: id,
        pickedFiles: pickedFiles,
        beforeOrAfterPic: beforeOrAfterPic,
        picType: picType);
    return result.fold(
      (l) {
        addImageScheduleResponse = addImageScheduleResponse.copyWith(
          error: l.keys.first,
          loading: false,
        );
      },
      (r) {
        addImageScheduleResponse = addImageScheduleResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        shedulecardviewmodelweekfunction();
        context.router.pop();
        showToast(context, msg: "Successfully added", color: Colors.green);
      },
    );
  }

  @action
  dateSelectionFn(DateTime selectedday, DateTime focusedday) {
    selectedDay = selectedday;
    focusedDay = focusedday;
  }

  @observable
  bool isMinimized = false;

  @action
  void toggleMinimize() {
    isMinimized = !isMinimized;
  }

  @observable
  String? selectedEngineOilValue = "No issue";
  @observable
  String? selectedWarningSystemValue = "No issue";
  @observable
  String? selectedSteeringValue = "No issue";
  @observable
  String? selectedSafetyEmergValue = "No issue";
  @observable
  String? selectedHandBreakAlarmValue = "No issue";
  @observable
  String? selectedPTOVacValue = "No issue";
  @observable
  String? selectedHornValue = "No issue";
  @observable
  String? selectedRevAlarmCameraValue = "No issue";
  @observable
  String? selectedLightsHeadValue = "No issue";
  @observable
  String? selectedLightsTailValue = "No issue";
  @observable
  String? selectedLightBeaconsValue = "No issue";
  @observable
  String? selectedHazardsLightsValue = "No issue";
  @observable
  String? selectedRimsWheelNutsValue = "No issue";
  @observable
  String? selectedCoolantValue = "No issue";
  @observable
  String? selectedWheelsTyresValue = "No issue";
  @observable
  String? selectedMirrorsWindscreenValue = "No issue";
  @observable
  String? selectedStructureBodywrkValue = "No issue";
  @observable
  String? selectedWipersValue = "No issue";
  @observable
  String? selectedFuelLevelPumbValue = "No issue";
  @observable
  String? selectedFuelLevelTruckValue = "No issue";
  @observable
  String? selectedSeatSeatBeltValue = "No issue";
  @observable
  String? selectedParkBarkeValue = "No issue";
  @observable
  String? selectedFootBrakeValue = "No issue";
  @observable
  String? selectedElectricalValue = "No issue";
  @observable
  bool selectHosesCheckbox = false;
  @observable
  bool selectFittingsCheckbox = false;
  @observable
  bool selectFirstAidKitCheckbox = false;
  @observable
  bool selectPPECheckbox = false;
  @observable
  bool selectGardenHoseCheckbox = false;
  @observable
  bool selectGatticCheckbox = false;
  @observable
  bool selectBucketRagsCheckbox = false;
  @observable
  bool selectSpillKitCheckbox = false;
  @observable
  bool selectverifyCheckbox1 = false;
  @observable
  bool selectverifyCheckbox2 = false;
  @observable
  String? noIssue = "No issue";

  @observable
  String? categoryA = "categoryA";

  @observable
  String? categoryB = "categoryB";
  @action
  noIssueOnTap(String? value, int i) {
    value = noIssue;
    cmFunction(i, value ?? "");
  }

  @action
  categoryAOnTap(String? value, int i) {
    value = categoryA;
    cmFunction(i, value ?? "");
  }

  @action
  categoryBOnTap(String? value, int i) {
    value = categoryB;
    cmFunction(i, value ?? "");
  }

  @action
  void updateCheckboxValueFn1(bool newValue) {
    selectHosesCheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn2(bool newValue) {
    selectFittingsCheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn3(bool newValue) {
    selectFirstAidKitCheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn4(bool newValue) {
    selectPPECheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn5(bool newValue) {
    selectGardenHoseCheckbox = newValue;
  }

  @action
  void updateCheckboxValueFn6(bool newValue) {
    selectGatticCheckbox = newValue;
  }

  void updateCheckboxValueFn7(bool newValue) {
    selectBucketRagsCheckbox = newValue;
  }

  void updateCheckboxValueFn8(bool newValue) {
    selectSpillKitCheckbox = newValue;
  }

  void updateCheckboxValueFn9(bool newValue) {
    selectverifyCheckbox1 = newValue;
  }

  void updateCheckboxValueFn10(bool newValue) {
    selectverifyCheckbox2 = newValue;
  }

  @action
  cmFunction(int i, String value) {
    i == 1
        ? selectedEngineOilValue = value
        : i == 2
            ? selectedWarningSystemValue = value
            : i == 3
                ? selectedSteeringValue = value
                : i == 4
                    ? selectedSafetyEmergValue = value
                    : i == 5
                        ? selectedHandBreakAlarmValue = value
                        : i == 6
                            ? selectedPTOVacValue = value
                            : i == 7
                                ? selectedHornValue = value
                                : i == 8
                                    ? selectedRevAlarmCameraValue = value
                                    : i == 9
                                        ? selectedLightsHeadValue = value
                                        : i == 10
                                            ? selectedLightsTailValue = value
                                            : i == 11
                                                ? selectedLightBeaconsValue =
                                                    value
                                                : i == 12
                                                    ? selectedHazardsLightsValue =
                                                        value
                                                    : i == 13
                                                        ? selectedRimsWheelNutsValue =
                                                            value
                                                        : i == 14
                                                            ? selectedCoolantValue =
                                                                value
                                                            : i == 15
                                                                ? selectedWheelsTyresValue =
                                                                    value
                                                                : i == 16
                                                                    ? selectedMirrorsWindscreenValue =
                                                                        value
                                                                    : i == 17
                                                                        ? selectedStructureBodywrkValue =
                                                                            value
                                                                        : i == 18
                                                                            ? selectedWipersValue = value
                                                                            : i == 19
                                                                                ? selectedFuelLevelPumbValue = value
                                                                                : i == 20
                                                                                    ? selectedFuelLevelTruckValue = value
                                                                                    : i == 21
                                                                                        ? selectedSeatSeatBeltValue = value
                                                                                        : i == 22
                                                                                            ? selectedParkBarkeValue = value
                                                                                            : i == 23
                                                                                                ? selectedFootBrakeValue = value
                                                                                                : i == 24
                                                                                                    ? selectedElectricalValue = value
                                                                                                    : value;
  }

  @action
  void updateCheckboxValue(bool newValue) {
    checkboxValue = newValue;
  }

  @action
  void updateCheckboxValue2(bool newValue2) {
    checkboxValue2 = newValue2;
  }

  @action
  void updateCheckboxValue3(bool newValue3) {
    checkboxValue3 = newValue3;
  }

  @action
  Future<void> pickFilefromphone() async {
    var pic = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'doc']);
    pickedFiles.addAll(pic?.files ?? []);
    pickedFiles = [...pickedFiles];
  }

  @action
  datePickerFn(date) {
    selectedFireExtinguisherDate = date;
  }

  @action
  Future<void> pickImageFromsignatureCamera() async {
    final pickedsignaturecameraImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedsignaturecameraImage != null) {
      selectedsignaturecameraImage = File(pickedsignaturecameraImage.path);
    }
  }

  @action
  Future<void> pickImageFromCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      selectedcameraImage = File(pickedImage.path);
      isImageSelected = true;
    }
  }

  @action
  Future<void> pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      selectedImage = File(pickedImage.path);
    }
  }

  @action
  enviroDatePickerFn(BuildContext context, DateTime selectedDate, date,
      String status, int id, dynamic statusdType,
      {bool? fromButton = false}) async {
    selectedDate = date;
    String dateString = DateFormat('yyyy-MM-dd HH:mm:ss').format(selectedDate);
    editScheduleStatusApi(
        context: context,
        statusType: statusdType,
        date: dateString,
        status: status,
        id: id);
    pickedCameraImage = null;
    pickedGalleryImage = null;
    pickedCameraImageList = [];
    pickedGalleryImageList = [];
    if (fromButton == true) {
      context.router.push(CameraGalleryRoute(fromJobFinished: true, id: id));
    }
  }

  @action
  preInspectionSubmitButtonValidation() {
    if (odometerCntrller.text.isNotEmpty &&
        hoursMeterCntrller.text.isNotEmpty &&
        checkboxValue != false &&
        checkboxValue2 != false &&
        checkboxValue3 != false &&
        selectverifyCheckbox1 != false &&
        selectverifyCheckbox2 != false) {
      showSubmitButton = true;
    } else {
      showSubmitButton = false;
    }
  }
}
