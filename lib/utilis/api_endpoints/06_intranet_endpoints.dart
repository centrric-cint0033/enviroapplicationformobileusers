mixin class IntranetEndpoints {
  final String intranetFolderList = '/api/v1/intranet_archive/folder/segment';

  final String intranetFolder = '/api/v1/intranet_archive/folder/segment/';

  final String intranetAddFolder = '/api/v1/sales/folder/intranet/create/';

  final String intranetEditFolder = '/api/v1/drive/folder/rename/';

  final String intranetDeleteFolder = '/api/v1/drive/folder/delete/';

  final String intranetAddFile = '/api/v1/drive/file/create/';

  final String intranetEditFile = '/api/v1/drive/file/rename/';

  final String intranetDeleteFile = '/api/v1/drive/file/delete/';

  final String intranetFileExpiry = '/api/v1/drive/file/expiry-date/';

  final String intranetSearchFolder = '/api/v1/drive/search/folder/';

  final String intranetSearchFileFolder = '/api/v1/drive/search/file/';
}
