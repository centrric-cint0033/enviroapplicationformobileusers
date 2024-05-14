import 'dart:io';

import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:open_file/open_file.dart';

part 'shedule_page_view_model.g.dart';

final vmJobcard = getIt<JobCardViewModel>();

@injectable
@lazySingleton
class JobCardViewModel extends JobCardViewModelBase with _$JobCardViewModel {
  JobCardViewModel(super.jobcardService);
}

abstract class JobCardViewModelBase with Store {
  final IJobCardService jobcardService;

  JobCardViewModelBase(this.jobcardService);

  @observable
  Color? signColor = Colors.white;

  Future<void> updateSignatureButtonColor({bool state = false}) async {
    if (state == true) {
      signColor = Colors.blue;
    } else if (state != true) {
      signColor = Colors.white;
    }
  }

  @observable
  List<PlatformFile> pickedFiles = [];

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
      // isImageSelected = true;

      print('Image selected');
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

      print('Image selected');
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
    print('aaaaa$jobcardResponse');
    print('aaaaa$jobcardResponse');

    jobcardResponse = jobcardResponse.copyWith(error: null, loading: true);

    final result = await jobcardService.jobcardservicefunction();
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
    print('aaaaa$jobcardResponse');
    print('aaaaa$jobcardResponse');

    shedulecardResponse =
        shedulecardResponse.copyWith(error: null, loading: true);

    final result = await jobcardService.shedulecardservicefunction();
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
    print('aaaaa$jobcardResponse');
    print('aaaaa$jobcardResponse');

    sheduleweekResponse =
        sheduleweekResponse.copyWith(error: null, loading: true);

    final result = await jobcardService.shedulecardserviceweekfunction();
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
}
