// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SiteViewModel on SiteViewModelBase, Store {
  late final _$permanentSiteResponseAtom =
      Atom(name: 'SiteViewModelBase.permanentSiteResponse', context: context);

  @override
  ApiResponse<List<SiteResModel>> get permanentSiteResponse {
    _$permanentSiteResponseAtom.reportRead();
    return super.permanentSiteResponse;
  }

  @override
  set permanentSiteResponse(ApiResponse<List<SiteResModel>> value) {
    _$permanentSiteResponseAtom.reportWrite(value, super.permanentSiteResponse,
        () {
      super.permanentSiteResponse = value;
    });
  }

  late final _$tempSiteResponseAtom =
      Atom(name: 'SiteViewModelBase.tempSiteResponse', context: context);

  @override
  ApiResponse<List<SiteResModel>> get tempSiteResponse {
    _$tempSiteResponseAtom.reportRead();
    return super.tempSiteResponse;
  }

  @override
  set tempSiteResponse(ApiResponse<List<SiteResModel>> value) {
    _$tempSiteResponseAtom.reportWrite(value, super.tempSiteResponse, () {
      super.tempSiteResponse = value;
    });
  }

  late final _$delSiteResponseAtom =
      Atom(name: 'SiteViewModelBase.delSiteResponse', context: context);

  @override
  ApiResponse<List<SiteResModel>> get delSiteResponse {
    _$delSiteResponseAtom.reportRead();
    return super.delSiteResponse;
  }

  @override
  set delSiteResponse(ApiResponse<List<SiteResModel>> value) {
    _$delSiteResponseAtom.reportWrite(value, super.delSiteResponse, () {
      super.delSiteResponse = value;
    });
  }

  late final _$detailLoadingAtom =
      Atom(name: 'SiteViewModelBase.detailLoading', context: context);

  @override
  bool get detailLoading {
    _$detailLoadingAtom.reportRead();
    return super.detailLoading;
  }

  @override
  set detailLoading(bool value) {
    _$detailLoadingAtom.reportWrite(value, super.detailLoading, () {
      super.detailLoading = value;
    });
  }

  late final _$selectedWasteTypeModelAtom =
      Atom(name: 'SiteViewModelBase.selectedWasteTypeModel', context: context);

  @override
  WasteTypeModel? get selectedWasteTypeModel {
    _$selectedWasteTypeModelAtom.reportRead();
    return super.selectedWasteTypeModel;
  }

  @override
  set selectedWasteTypeModel(WasteTypeModel? value) {
    _$selectedWasteTypeModelAtom
        .reportWrite(value, super.selectedWasteTypeModel, () {
      super.selectedWasteTypeModel = value;
    });
  }

  late final _$wasteTypesInSiteAtom =
      Atom(name: 'SiteViewModelBase.wasteTypesInSite', context: context);

  @override
  ApiResponse<List<WasteTypeModel>> get wasteTypesInSite {
    _$wasteTypesInSiteAtom.reportRead();
    return super.wasteTypesInSite;
  }

  @override
  set wasteTypesInSite(ApiResponse<List<WasteTypeModel>> value) {
    _$wasteTypesInSiteAtom.reportWrite(value, super.wasteTypesInSite, () {
      super.wasteTypesInSite = value;
    });
  }

  late final _$searchTypeAtom =
      Atom(name: 'SiteViewModelBase.searchType', context: context);

  @override
  String? get searchType {
    _$searchTypeAtom.reportRead();
    return super.searchType;
  }

  @override
  set searchType(String? value) {
    _$searchTypeAtom.reportWrite(value, super.searchType, () {
      super.searchType = value;
    });
  }

  late final _$siteFoldersResponseAtom =
      Atom(name: 'SiteViewModelBase.siteFoldersResponse', context: context);

  @override
  ApiResponse<FolderListModel> get siteFoldersResponse {
    _$siteFoldersResponseAtom.reportRead();
    return super.siteFoldersResponse;
  }

  @override
  set siteFoldersResponse(ApiResponse<FolderListModel> value) {
    _$siteFoldersResponseAtom.reportWrite(value, super.siteFoldersResponse, () {
      super.siteFoldersResponse = value;
    });
  }

  late final _$siteFoldersResponse2Atom =
      Atom(name: 'SiteViewModelBase.siteFoldersResponse2', context: context);

  @override
  ApiResponse<FolderListModel> get siteFoldersResponse2 {
    _$siteFoldersResponse2Atom.reportRead();
    return super.siteFoldersResponse2;
  }

  @override
  set siteFoldersResponse2(ApiResponse<FolderListModel> value) {
    _$siteFoldersResponse2Atom.reportWrite(value, super.siteFoldersResponse2,
        () {
      super.siteFoldersResponse2 = value;
    });
  }

  late final _$getPermanentSitesAsyncAction =
      AsyncAction('SiteViewModelBase.getPermanentSites', context: context);

  @override
  Future<void> getPermanentSites({int? page}) {
    return _$getPermanentSitesAsyncAction
        .run(() => super.getPermanentSites(page: page));
  }

  late final _$getTemporarySitesAsyncAction =
      AsyncAction('SiteViewModelBase.getTemporarySites', context: context);

  @override
  Future<void> getTemporarySites({int? page}) {
    return _$getTemporarySitesAsyncAction
        .run(() => super.getTemporarySites(page: page));
  }

  late final _$getDeletedSitesAsyncAction =
      AsyncAction('SiteViewModelBase.getDeletedSites', context: context);

  @override
  Future<void> getDeletedSites({int? page}) {
    return _$getDeletedSitesAsyncAction
        .run(() => super.getDeletedSites(page: page));
  }

  late final _$getDetailsAsyncAction =
      AsyncAction('SiteViewModelBase.getDetails', context: context);

  @override
  Future<void> getDetails(
      {required int id,
      required BuildContext context,
      SiteType type = SiteType.permananet}) {
    return _$getDetailsAsyncAction
        .run(() => super.getDetails(id: id, context: context, type: type));
  }

  late final _$searchSitesAsyncAction =
      AsyncAction('SiteViewModelBase.searchSites', context: context);

  @override
  Future<void> searchSites(
      {required String key, SiteType type = SiteType.permananet}) {
    return _$searchSitesAsyncAction
        .run(() => super.searchSites(key: key, type: type));
  }

  late final _$getWasteTypesInSiteAsyncAction =
      AsyncAction('SiteViewModelBase.getWasteTypesInSite', context: context);

  @override
  Future<void> getWasteTypesInSite({required int id}) {
    return _$getWasteTypesInSiteAsyncAction
        .run(() => super.getWasteTypesInSite(id: id));
  }

  late final _$getSiteFolderssAsyncAction =
      AsyncAction('SiteViewModelBase.getSiteFolderss', context: context);

  @override
  Future<void> getSiteFolderss({required num id, required num parentFolderId}) {
    return _$getSiteFolderssAsyncAction.run(
        () => super.getSiteFolderss(id: id, parentFolderId: parentFolderId));
  }

  @override
  String toString() {
    return '''
permanentSiteResponse: ${permanentSiteResponse},
tempSiteResponse: ${tempSiteResponse},
delSiteResponse: ${delSiteResponse},
detailLoading: ${detailLoading},
selectedWasteTypeModel: ${selectedWasteTypeModel},
wasteTypesInSite: ${wasteTypesInSite},
searchType: ${searchType},
siteFoldersResponse: ${siteFoldersResponse},
siteFoldersResponse2: ${siteFoldersResponse2}
    ''';
  }
}
