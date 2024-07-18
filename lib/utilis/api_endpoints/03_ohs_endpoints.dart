mixin class OhsEndpoints {
  final String ohsNewsList = '/api/v1/oh_and_s/news/view/1/?limit=8';
  final String ohsNotificationList = '/api/v1/oh_and_s/notification/';
  final String ohsFolderRename = '/api/v1/drive/folder/create/';
  final String ohsAddNotification = '/api/v1/oh_and_s/notification/create/';
  final String ohsAddNews = '/api/v1/oh_and_s/news/create/';
  final String ohsEditNews = '/api/v1/oh_and_s/news/edit/';
  final String getFolders = '/api/v1/oh_and_s/folder/segment/list/';
  final String addFolders = '/api/v1/drive/folder/create/';
  final String editFolders = '/api/v1/drive/folder/rename/';
  final String deleteFolders = '/api/v1/drive/folder/delete/';
  final String searchFolders = '/api/v1/drive/search/folder/';
  final String searchFileFolders = '/api/v1/drive/search/file/';
  final String addFile = '/api/v1/drive/file/create/';
  final String editFile = '/api/v1/drive/file/rename/';
  final String deleteFile = '/api/v1/drive/file/delete/';  
  final String filesExpiry = '/api/v1/drive/file/expiry-date/';
}
