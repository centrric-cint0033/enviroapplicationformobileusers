import 'dart:io';
import 'dart:typed_data';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/schedule_card_by_date_res_model/schedule_card_by_date_res_model.dart';
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
import 'package:signature/signature.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final TextEditingController controllerTypeofwaste = TextEditingController();
  final TextEditingController signNameController = TextEditingController();
  final TextEditingController controllerPonumber = TextEditingController();
  final TextEditingController controllerWateliters = TextEditingController();
  final SignatureController signaturecontroller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
    onDrawEnd: () {
      vmSchedule.updateSignatureButtonColor(state: true);
    },
  );
  @observable
  bool containerHeight = false;
  @observable
  bool showSubmitButton = false;
  @observable
  int driversIndex = 0;
    @observable
  int driversIndexByDate = 0;
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
  String? pickedWeighCameraImage = "";
  @observable
  ObservableList<String>? pickedWeighImageList = ObservableList<String>();
  @observable
  ObservableList<String>? addFileJobcardList = ObservableList<String>();
  @observable
  String? pickedWeighGalleryImage = "";
  @observable
  bool isImageSelected = true;
  @observable
  String? pickedCameraVideo = "";
  @observable
  String? pickedGalleryVideo = "";
  @observable
  List<String> pickedCameraVideoList = [];
  @observable
  List<String>? pickedGalleryVideoList = [];
  @observable
  Uint8List? signaturePicker;
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
  @observable
  List<int> imageIds = [];
  @observable
  List<int> videoIds = [];
  @observable
  List<int> imageIdsAfterPic = [];
  @observable
  List<int> imageIdsGalleryPic = [];
  @observable
  String? signaturePath;
  @observable
  bool showDeleteClearButtonsBeforePic = false;
  @observable
  bool showDeleteClearButtonsAfterPic = false;
  @observable
  bool showDeleteClearButtonsGalleryPic = false;
  @observable
  bool showDeleteClearButtonsVideo = false;
  @observable
  ObservableList<bool> selectedStatesBeforePic = ObservableList<bool>();
  // Flag to indicate if selection mode is active
  @observable
  bool isSelectionModeBeforePic = false;
// @observable
// int? selectedIndexBeforePic;

  // Action to toggle selection state for a specific index
  // @action
  // void toggleSelectionBeforePic(int index, int imageId) {
  //   if (index >= 0 && index < selectedStatesBeforePic.length) {
  //     selectedStatesBeforePic[index] = !selectedStatesBeforePic[index];
  //     if (selectedStatesBeforePic[index]) {
  //       imageIds.add(imageId);
  //     } else {
  //       imageIds.remove(imageId);
  //     }
  //   }
  //   updateSelectionModeBeforePic();
  // }

  // // Action to activate selection mode and select the first item
  // @action
  // void startSelectionBeforePic(int index, int imageId) {
  //   if (index >= 0 && index < selectedStatesBeforePic.length) {
  //     selectedStatesBeforePic[index] = !selectedStatesBeforePic[index];
  //     if (selectedStatesBeforePic[index]) {
  //       imageIds.add(imageId);
  //     } else {
  //       imageIds.remove(imageId);
  //     }
  //   }
  //   updateSelectionModeBeforePic();
  // }

  // // Action to deactivate selection mode
  // @action
  // void clearSelectionModeBeforePic() {
  //   isSelectionModeBeforePic = false;
  //   selectedStatesBeforePic.fillRange(0, selectedStatesBeforePic.length, false);
  //   imageIds.clear();
  //   updateSelectionModeBeforePic();
  // }

  // // Initialize the selected states list based on the number of images
  // void initializeSelectionStatesBeforePic(int length) {
  //   selectedStatesBeforePic =
  //       ObservableList<bool>.of(List.filled(length, false));
  // }

  // // Update selection mode based on any selected items
  // void updateSelectionModeBeforePic() {
  //   bool anySelected = selectedStatesBeforePic.any((isSelected) => isSelected);
  //   isSelectionModeBeforePic = anySelected;
  //   showDeleteClearButtonsBeforePic = anySelected;
  // }
  @observable
  int? selectedIndexBeforePic;

// Action to toggle selection state for a specific index
  @action
  void toggleSelectionBeforePic(int index, int imageId) {
    if (selectedIndexBeforePic == index) {
      // Deselect if the same item is clicked again
      selectedStatesBeforePic[index] = false;
      selectedIndexBeforePic = null;
      imageIds.remove(imageId);
    } else {
      // Clear previous selection
      if (selectedIndexBeforePic != null) {
        selectedStatesBeforePic[selectedIndexBeforePic!] = false;
        imageIds.clear();
      }

      // Select the new item
      selectedStatesBeforePic[index] = true;
      selectedIndexBeforePic = index;
      imageIds.add(imageId);
    }
    updateSelectionModeBeforePic();
  }

// Action to activate selection mode and select the first item
  @action
  void startSelectionBeforePic(int index, int imageId) {
    // Clear previous selection
    if (selectedIndexBeforePic != null) {
      selectedStatesBeforePic[selectedIndexBeforePic!] = false;
      imageIds.clear();
    }

    // Select the new item
    selectedStatesBeforePic[index] = true;
    selectedIndexBeforePic = index;
    imageIds.add(imageId);

    updateSelectionModeBeforePic();
  }

// Action to deactivate selection mode
  @action
  void clearSelectionModeBeforePic() {
    isSelectionModeBeforePic = false;
    selectedStatesBeforePic.fillRange(0, selectedStatesBeforePic.length, false);
    selectedIndexBeforePic = null;
    imageIds.clear();
    updateSelectionModeBeforePic();
  }

// Initialize the selected states list based on the number of images
  void initializeSelectionStatesBeforePic(int length) {
    selectedStatesBeforePic =
        ObservableList<bool>.of(List.filled(length, false));
    selectedIndexBeforePic = null;
  }

// Update selection mode based on any selected items
  void updateSelectionModeBeforePic() {
    bool anySelected = selectedStatesBeforePic.any((isSelected) => isSelected);
    isSelectionModeBeforePic = anySelected;
    showDeleteClearButtonsBeforePic = anySelected;
  }

//
  @observable
  int? selectedIndexAfterPic;
  @observable
  ObservableList<bool> selectedStatesAfterPic = ObservableList<bool>();

  @observable
  bool isSelectionModeAfterPic = false;
  @action
  void toggleSelectionAfterPic(int index, int imageId) {
    if (selectedIndexAfterPic == index) {
      selectedStatesAfterPic[index] = false;
      selectedIndexAfterPic = null;
      imageIdsAfterPic.remove(imageId);
    } else {
      if (selectedIndexAfterPic != null) {
        selectedStatesAfterPic[selectedIndexAfterPic!] = false;
        imageIdsAfterPic.clear();
      }
      selectedStatesAfterPic[index] = true;
      selectedIndexAfterPic = index;
      imageIdsAfterPic.add(imageId);
    }
    updateSelectionModeAfterPic();
  }

  @action
  void startSelectionAfterPic(int index, int imageId) {
    if (selectedIndexAfterPic != null) {
      selectedStatesAfterPic[selectedIndexAfterPic!] = false;
      imageIdsAfterPic.clear();
    }
    selectedStatesAfterPic[index] = true;
    selectedIndexAfterPic = index;
    imageIdsAfterPic.add(imageId);
    updateSelectionModeAfterPic();
  }

  @action
  void clearSelectionModeAfterPic() {
    isSelectionModeAfterPic = false;
    selectedStatesAfterPic.fillRange(0, selectedStatesAfterPic.length, false);
    selectedIndexAfterPic = null;
    imageIds.clear();
    updateSelectionModeAfterPic();
  }

  void initializeSelectionStatesAfterPic(int length) {
    selectedStatesAfterPic =
        ObservableList<bool>.of(List.filled(length, false));
    selectedIndexAfterPic = null;
  }

  void updateSelectionModeAfterPic() {
    bool anySelected = selectedStatesAfterPic.any((isSelected) => isSelected);
    isSelectionModeAfterPic = anySelected;
    showDeleteClearButtonsAfterPic = anySelected;
  }

//
  @observable
  int? selectedIndexGalleryPic;
  @observable
  ObservableList<bool> selectedStatesGalleryPic = ObservableList<bool>();

  @observable
  bool isSelectionModeGalleryPic = false;
  @action
  void toggleSelectionGalleryPic(int index, int imageId) {
    if (selectedIndexGalleryPic == index) {
      selectedStatesGalleryPic[index] = false;
      selectedIndexGalleryPic = null;
      imageIdsGalleryPic.remove(imageId);
    } else {
      if (selectedIndexGalleryPic != null) {
        selectedStatesGalleryPic[selectedIndexGalleryPic!] = false;
        imageIdsGalleryPic.clear();
      }
      selectedStatesGalleryPic[index] = true;
      selectedIndexGalleryPic = index;
      imageIdsGalleryPic.add(imageId);
    }
    updateSelectionModeGalleryPic();
  }

  @action
  void startSelectionGalleryPic(int index, int imageId) {
    if (selectedIndexGalleryPic != null) {
      selectedStatesGalleryPic[selectedIndexGalleryPic!] = false;
      imageIdsGalleryPic.clear();
    }
    selectedStatesGalleryPic[index] = true;
    selectedIndexGalleryPic = index;
    imageIdsGalleryPic.add(imageId);
    updateSelectionModeGalleryPic();
  }

  @action
  void clearSelectionModeGalleryPic() {
    isSelectionModeGalleryPic = false;
    selectedStatesGalleryPic.fillRange(
        0, selectedStatesGalleryPic.length, false);
    selectedIndexGalleryPic = null;
    imageIdsGalleryPic.clear();
    updateSelectionModeGalleryPic();
  }

  void initializeSelectionStatesGalleryPic(int length) {
    selectedStatesGalleryPic =
        ObservableList<bool>.of(List.filled(length, false));
    selectedIndexGalleryPic = null;
  }

  void updateSelectionModeGalleryPic() {
    bool anySelected = selectedStatesGalleryPic.any((isSelected) => isSelected);
    isSelectionModeGalleryPic = anySelected;
    showDeleteClearButtonsGalleryPic = anySelected;
  }

//
  @observable
  int? selectedIndexVideo;
  @observable
  bool isSelectionModeVideo = false;
  @observable
  ObservableList<bool> selectedStatesVideo = ObservableList<bool>();
  @action
  void toggleSelectionVideo(int index, int videoId) {
    if (selectedIndexVideo == index) {
      selectedStatesVideo[index] = false;
      selectedIndexVideo = null;
      videoIds.remove(videoId);
    } else {
      if (selectedIndexVideo != null) {
        selectedStatesVideo[selectedIndexVideo!] = false;
        videoIds.clear();
      }
      selectedStatesVideo[index] = true;
      selectedIndexVideo = index;
      videoIds.add(videoId);
    }
    updateSelectionModeVideo();
  }

  @action
  void startSelectionVideo(int index, int videoId) {
    if (selectedIndexVideo != null) {
      selectedStatesVideo[selectedIndexVideo!] = false;
      imageIds.clear();
    }
    selectedStatesVideo[index] = true;
    selectedIndexVideo = index;
    videoIds.add(videoId);
    updateSelectionModeVideo();
  }

  @action
  void clearSelectionModeVideo() {
    isSelectionModeVideo = false;
    selectedStatesVideo.fillRange(0, selectedStatesVideo.length, false);
    selectedIndexVideo = null;
    videoIds.clear();
    updateSelectionModeVideo();
  }

  void initializeSelectionStatesVideo(int length) {
    selectedStatesVideo = ObservableList<bool>.of(List.filled(length, false));
    selectedIndexVideo = null;
  }

  void updateSelectionModeVideo() {
    bool anySelected = selectedStatesVideo.any((isSelected) => isSelected);
    isSelectionModeVideo = anySelected;
    showDeleteClearButtonsVideo = anySelected;
  }

//
  @action
  void updateProductImageData({ImageFilePickerModel? image}) {
    pickedCameraImage2 = image!;
  }

  @observable
  ApiResponse<JobCardRespModel> jobcardResponse =
      ApiResponse<JobCardRespModel>();

  @action
  void setSignaturePicker(Uint8List signature, String path) {
    signaturePicker = signature;
    signaturePath = path;
  }

  @action
  Future<void> jobcardviewmodelfunction({required int quoteId}) async {
    jobcardResponse = jobcardResponse.copyWith(error: null, loading: true);

    final result =
        await scheduleService.jobcardservicefunction(quoteId: quoteId);
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
  ApiResponse<List<ScheduleCardByDateResModel>> shedulecardByDateResponse =
      ApiResponse<List<ScheduleCardByDateResModel>>();

  @action
  Future<void> shedulecardviewmodelfunctionByDate({String? fromDate}) async {
    shedulecardByDateResponse =
        shedulecardByDateResponse.copyWith(error: null, loading: true);

    final result = await scheduleService.shedulecardservicefunctionByDate(
        fromDate: fromDate);
    return result.fold(
      (l) {
        shedulecardByDateResponse = shedulecardByDateResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        shedulecardByDateResponse = shedulecardByDateResponse.copyWith(
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
    required BuildContext context,
    required int id,
    required List<String> pickedFiles,
    required String image,
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
        signaturecontroller.clear();
        context.router.pop();
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
        shedulecardviewmodelfunction();
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
        shedulecardviewmodelfunction();
        showToast(context,
            msg: "Job status updated successfully", color: Colors.green);
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
      required List<String> pickedFiles,
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
        shedulecardviewmodelfunction();
        pickedCameraImageList = [];
        pickedGalleryImageList = [];
        pickedWeighImageList = null;
        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<ScheduleImageResModel> deleteImageScheduleResponse =
      ApiResponse<ScheduleImageResModel>();
  @observable
  ApiResponse<ScheduleImageResModel> deleteAfterImageScheduleResponse =
      ApiResponse<ScheduleImageResModel>();
  @action
  Future<void> deleteImageScheduleApi(
      {required BuildContext context,
      required int id,
      required List<int> imageId,
      bool fromAfterPic = false}) async {
    fromAfterPic == false
        ? deleteImageScheduleResponse =
            deleteImageScheduleResponse.copyWith(error: null, loading: true)
        : deleteAfterImageScheduleResponse = deleteAfterImageScheduleResponse
            .copyWith(error: null, loading: true);

    final result =
        await scheduleService.deleteImagesScheduleAPi(id: id, imageId: imageId);
    return result.fold(
      (l) {
        fromAfterPic == false
            ? deleteImageScheduleResponse =
                deleteImageScheduleResponse.copyWith(
                error: l.keys.first,
                loading: false,
              )
            : deleteAfterImageScheduleResponse =
                deleteAfterImageScheduleResponse.copyWith(
                error: l.keys.first,
                loading: false,
              );
      },
      (r) {
        fromAfterPic == false
            ? deleteImageScheduleResponse =
                deleteImageScheduleResponse.copyWith(
                data: r,
                error: null,
                loading: false,
              )
            : deleteAfterImageScheduleResponse =
                deleteAfterImageScheduleResponse.copyWith(
                data: r,
                error: null,
                loading: false,
              );
        vmSchedule.showDeleteClearButtonsBeforePic = false;
        vmSchedule.showDeleteClearButtonsAfterPic = false;
        vmSchedule.imageIds = [];
        shedulecardviewmodelfunction();
      },
    );
  }

  @observable
  ApiResponse<ScheduleImageResModel> addVideoScheduleResponse =
      ApiResponse<ScheduleImageResModel>();
  @action
  Future<void> addVideoScheduleApi({
    required BuildContext context,
    required int id,
    required List<String> pickedFiles,
  }) async {
    addVideoScheduleResponse =
        addVideoScheduleResponse.copyWith(error: null, loading: true);

    final result = await scheduleService.addVideosScheduleAPi(
      id: id,
      pickedFiles: pickedFiles,
    );
    return result.fold(
      (l) {
        addVideoScheduleResponse = addVideoScheduleResponse.copyWith(
          error: l.keys.first,
          loading: false,
        );
      },
      (r) {
        addVideoScheduleResponse = addVideoScheduleResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        pickedCameraVideoList = [];
        pickedGalleryVideoList = [];
        showToast(context, msg: "Successfully added", color: Colors.green);
        shedulecardviewmodelfunction();
        context.router.pop();
      },
    );
  }

  @observable
  int? vdoId;
  @observable
  ApiResponse<ScheduleImageResModel> deleteVideoScheduleResponse =
      ApiResponse<ScheduleImageResModel>();
  @action
  Future<void> deleteVideoScheduleApi({
    required BuildContext context,
    required int id,
    required int JobVdoId,
  }) async {
    deleteVideoScheduleResponse =
        deleteVideoScheduleResponse.copyWith(error: null, loading: true);

    final result = await scheduleService.deleteVideosScheduleAPi(
      id: id,
      jobVdoId: JobVdoId,
    );
    return result.fold(
      (l) {
        deleteVideoScheduleResponse = deleteVideoScheduleResponse.copyWith(
          error: l.keys.first,
          loading: false,
        );
      },
      (r) {
        deleteVideoScheduleResponse = deleteVideoScheduleResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        showToast(context, msg: "Successfully deleted", color: Colors.green);
        shedulecardviewmodelfunction();
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
    if (pic != null) {
      var filePaths =
          pic.files.map((file) => file.path).whereType<String>().toList();
      pickedWeighImageList?.addAll(filePaths);
    }
    // pickedFiles.addAll(pic?.files ?? []);
    // pickedFiles = [...pickedFiles];
  }

  @action
  Future<void> addFileJobcardFn() async {
    var pic = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.custom,
        allowedExtensions: ['jpg', 'pdf', 'doc']);
    if (pic != null) {
      var filePaths =
          pic.files.map((file) => file.path).whereType<String>().toList();
      addFileJobcardList?.addAll(filePaths);
    }
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
  enviroDatePickerFn(BuildContext context, DateTime selectedDate, date,
      String status, int id, dynamic statusdType,
      {bool? fromJobStarted = false}) async {
    selectedDate = date;
    String dateString = DateFormat('yyyy-MM-dd HH:mm:ss').format(selectedDate);
    editScheduleStatusApi(
        context: context,
        statusType: statusdType,
        date: dateString,
        status: status,
        id: id);
    clearLists();
    // if (toCameraGalleryScreen == true) {
    //   context.router
    //       .push(ScheduleImageRoute(fromJobStarted: fromJobStarted!, id: id));
    // }
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

  @action
  clearLists() {
    pickedCameraImage = "";
    pickedGalleryImage = "";
    pickedCameraImageList = [];
    pickedGalleryImageList = [];
    pickedWeighImageList = null;
  }

  @action
  clearFn() {
    showDeleteClearButtonsBeforePic = false;
    showDeleteClearButtonsAfterPic = false;
    showDeleteClearButtonsGalleryPic = false;
    showDeleteClearButtonsVideo = false;
    imageIds = [];
    imageIdsAfterPic = [];
    imageIdsGalleryPic = [];
    videoIds = [];
  }

  @action
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
