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

  @override
  String toString() {
    return '''
permanentSiteResponse: ${permanentSiteResponse},
tempSiteResponse: ${tempSiteResponse},
delSiteResponse: ${delSiteResponse}
    ''';
  }
}
