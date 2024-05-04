// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shedule_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$JobCardViewModel on JobCardViewModelBase, Store {
  late final _$selectedImageAtom =
      Atom(name: 'JobCardViewModelBase.selectedImage', context: context);

  @override
  File? get selectedImage {
    _$selectedImageAtom.reportRead();
    return super.selectedImage;
  }

  @override
  set selectedImage(File? value) {
    _$selectedImageAtom.reportWrite(value, super.selectedImage, () {
      super.selectedImage = value;
    });
  }

  late final _$greencheckedAtom =
      Atom(name: 'JobCardViewModelBase.greenchecked', context: context);

  @override
  bool get greenchecked {
    _$greencheckedAtom.reportRead();
    return super.greenchecked;
  }

  @override
  set greenchecked(bool value) {
    _$greencheckedAtom.reportWrite(value, super.greenchecked, () {
      super.greenchecked = value;
    });
  }

  late final _$bluecheckedAtom =
      Atom(name: 'JobCardViewModelBase.bluechecked', context: context);

  @override
  bool get bluechecked {
    _$bluecheckedAtom.reportRead();
    return super.bluechecked;
  }

  @override
  set bluechecked(bool value) {
    _$bluecheckedAtom.reportWrite(value, super.bluechecked, () {
      super.bluechecked = value;
    });
  }

  late final _$checkboxValueAtom =
      Atom(name: 'JobCardViewModelBase.checkboxValue', context: context);

  @override
  bool get checkboxValue {
    _$checkboxValueAtom.reportRead();
    return super.checkboxValue;
  }

  @override
  set checkboxValue(bool value) {
    _$checkboxValueAtom.reportWrite(value, super.checkboxValue, () {
      super.checkboxValue = value;
    });
  }

  late final _$checkboxValue2Atom =
      Atom(name: 'JobCardViewModelBase.checkboxValue2', context: context);

  @override
  bool get checkboxValue2 {
    _$checkboxValue2Atom.reportRead();
    return super.checkboxValue2;
  }

  @override
  set checkboxValue2(bool value) {
    _$checkboxValue2Atom.reportWrite(value, super.checkboxValue2, () {
      super.checkboxValue2 = value;
    });
  }

  late final _$checkboxValue3Atom =
      Atom(name: 'JobCardViewModelBase.checkboxValue3', context: context);

  @override
  bool get checkboxValue3 {
    _$checkboxValue3Atom.reportRead();
    return super.checkboxValue3;
  }

  @override
  set checkboxValue3(bool value) {
    _$checkboxValue3Atom.reportWrite(value, super.checkboxValue3, () {
      super.checkboxValue3 = value;
    });
  }

  late final _$jobcardResponseAtom =
      Atom(name: 'JobCardViewModelBase.jobcardResponse', context: context);

  @override
  ApiResponse<JobCardRespModel> get jobcardResponse {
    _$jobcardResponseAtom.reportRead();
    return super.jobcardResponse;
  }

  @override
  set jobcardResponse(ApiResponse<JobCardRespModel> value) {
    _$jobcardResponseAtom.reportWrite(value, super.jobcardResponse, () {
      super.jobcardResponse = value;
    });
  }

  late final _$shedulecardResponseAtom =
      Atom(name: 'JobCardViewModelBase.shedulecardResponse', context: context);

  @override
  ApiResponse<List<SheduleCardRespModel>> get shedulecardResponse {
    _$shedulecardResponseAtom.reportRead();
    return super.shedulecardResponse;
  }

  @override
  set shedulecardResponse(ApiResponse<List<SheduleCardRespModel>> value) {
    _$shedulecardResponseAtom.reportWrite(value, super.shedulecardResponse, () {
      super.shedulecardResponse = value;
    });
  }

  late final _$sheduleweekResponseAtom =
      Atom(name: 'JobCardViewModelBase.sheduleweekResponse', context: context);

  @override
  ApiResponse<List<SheduleCardRespModel>> get sheduleweekResponse {
    _$sheduleweekResponseAtom.reportRead();
    return super.sheduleweekResponse;
  }

  @override
  set sheduleweekResponse(ApiResponse<List<SheduleCardRespModel>> value) {
    _$sheduleweekResponseAtom.reportWrite(value, super.sheduleweekResponse, () {
      super.sheduleweekResponse = value;
    });
  }

  late final _$pickImageFromGalleryAsyncAction = AsyncAction(
      'JobCardViewModelBase.pickImageFromGallery',
      context: context);

  @override
  Future<void> pickImageFromGallery() {
    return _$pickImageFromGalleryAsyncAction
        .run(() => super.pickImageFromGallery());
  }

  late final _$jobcardviewmodelfunctionAsyncAction = AsyncAction(
      'JobCardViewModelBase.jobcardviewmodelfunction',
      context: context);

  @override
  Future<void> jobcardviewmodelfunction() {
    return _$jobcardviewmodelfunctionAsyncAction
        .run(() => super.jobcardviewmodelfunction());
  }

  late final _$shedulecardviewmodelfunctionAsyncAction = AsyncAction(
      'JobCardViewModelBase.shedulecardviewmodelfunction',
      context: context);

  @override
  Future<void> shedulecardviewmodelfunction() {
    return _$shedulecardviewmodelfunctionAsyncAction
        .run(() => super.shedulecardviewmodelfunction());
  }

  late final _$shedulecardviewmodelweekfunctionAsyncAction = AsyncAction(
      'JobCardViewModelBase.shedulecardviewmodelweekfunction',
      context: context);

  @override
  Future<void> shedulecardviewmodelweekfunction() {
    return _$shedulecardviewmodelweekfunctionAsyncAction
        .run(() => super.shedulecardviewmodelweekfunction());
  }

  late final _$JobCardViewModelBaseActionController =
      ActionController(name: 'JobCardViewModelBase', context: context);

  @override
  void updategreencheckedValue(dynamic newValue) {
    final _$actionInfo = _$JobCardViewModelBaseActionController.startAction(
        name: 'JobCardViewModelBase.updategreencheckedValue');
    try {
      return super.updategreencheckedValue(newValue);
    } finally {
      _$JobCardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCheckboxValue(bool newValue) {
    final _$actionInfo = _$JobCardViewModelBaseActionController.startAction(
        name: 'JobCardViewModelBase.updateCheckboxValue');
    try {
      return super.updateCheckboxValue(newValue);
    } finally {
      _$JobCardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCheckboxValue2(bool newValue2) {
    final _$actionInfo = _$JobCardViewModelBaseActionController.startAction(
        name: 'JobCardViewModelBase.updateCheckboxValue2');
    try {
      return super.updateCheckboxValue2(newValue2);
    } finally {
      _$JobCardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateCheckboxValue3(bool newValue3) {
    final _$actionInfo = _$JobCardViewModelBaseActionController.startAction(
        name: 'JobCardViewModelBase.updateCheckboxValue3');
    try {
      return super.updateCheckboxValue3(newValue3);
    } finally {
      _$JobCardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedImage: ${selectedImage},
greenchecked: ${greenchecked},
bluechecked: ${bluechecked},
checkboxValue: ${checkboxValue},
checkboxValue2: ${checkboxValue2},
checkboxValue3: ${checkboxValue3},
jobcardResponse: ${jobcardResponse},
shedulecardResponse: ${shedulecardResponse},
sheduleweekResponse: ${sheduleweekResponse}
    ''';
  }
}
