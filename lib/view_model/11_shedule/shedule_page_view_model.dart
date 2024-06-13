import 'dart:io';
import 'dart:typed_data';

import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_comnt_resp_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_sign_res_model.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
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
  @action
  Future<void> updateSignatureButtonColor({bool state = false}) async {
    if (state == true) {
      signColor = Colors.blue;
    } else if (state == false) {
      signColor = Colors.white;
    }
  }

  @observable
  List<PlatformFile> pickedFiles = [];
  @observable
  DateTime focusedDay = DateTime.now();
  @observable
  DateTime? selectedDay;
  @action
  Future<void> pickFilefromphone() async {
    var pic = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'doc']);

    // pickedFiles = pic?.files ?? [];

    pickedFiles.addAll(pic?.files ?? []);

    pickedFiles = [...pickedFiles];

    // picked?.files.addAll(pic?.files ?? []);

    // if (picked == null) return;

    // final file = pic?.files.first;

    // _openFile(file!);
  }

  // void _openFile(PlatformFile file) {
  //   OpenFile.open(file.path);
  //   _openFile(file);
  // }

  @observable
  File? selectedsignaturecameraImage;

  @action
  Future<void> pickImageFromsignatureCamera() async {
    final pickedsignaturecameraImage =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedsignaturecameraImage != null) {
      selectedsignaturecameraImage = File(pickedsignaturecameraImage.path);
    }
  }

  @observable
  bool isImageSelected = true;

  @observable
  File? selectedcameraImage;

  @action
  Future<void> pickImageFromCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      selectedcameraImage = File(pickedImage.path);
      isImageSelected = true;
    }
  }

  @observable
  File? selectedImage;

  @action
  Future<void> pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      selectedImage = File(pickedImage.path);
    }
  }

  @observable
  bool greenchecked = true;

  @action
  void updategreencheckedValue(newValue) {
    greenchecked = newValue;
  }

  @observable
  bool bluechecked = true;

  @observable
  bool checkboxValue = false;

  @action
  void updateCheckboxValue(bool newValue) {
    checkboxValue = newValue;
  }

  @observable
  bool checkboxValue2 = false;

  @action
  void updateCheckboxValue2(bool newValue2) {
    checkboxValue2 = newValue2;
  }

  @observable
  bool checkboxValue3 = false;

  @action
  void updateCheckboxValue3(bool newValue3) {
    checkboxValue3 = newValue3;
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
      },
    );
  }

  @action
  dateSelectionFn(DateTime selectedday, DateTime focusedday) {
    selectedDay = selectedday;
    focusedDay = focusedday;
  }
}
