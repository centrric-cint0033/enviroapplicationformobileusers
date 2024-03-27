// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SiteViewModel on SiteViewModelBase, Store {
  late final _$siteResponseAtom =
      Atom(name: 'SiteViewModelBase.siteResponse', context: context);

  @override
  ApiResponse<List<SiteResModel>> get permanentSiteResponse {
    _$siteResponseAtom.reportRead();
    return super.permanentSiteResponse;
  }

  @override
  set permanentSiteResponse(ApiResponse<List<SiteResModel>> value) {
    _$siteResponseAtom.reportWrite(value, super.permanentSiteResponse, () {
      super.permanentSiteResponse = value;
    });
  }

  late final _$getSiteAsyncAction =
      AsyncAction('SiteViewModelBase.getSite', context: context);

  @override
  Future<void> getPermanentSites({int? page}) {
    return _$getSiteAsyncAction.run(() => super.getPermanentSites(page: page));
  }

  @override
  String toString() {
    return '''
siteResponse: ${permanentSiteResponse}
    ''';
  }
}
