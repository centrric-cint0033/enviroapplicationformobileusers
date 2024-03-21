import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/model/oh&snews_folder/oh&snews_fldr_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/folder_creation/i_all_folder_creation_service.dart';
import 'package:enviro_mobile_application/view/service/oh&s_news_page/i_all_oh&s_service.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_news_folder/oh&s_news_fldr_view_model.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'folder_creation_viewmodel.g.dart';

final vmfoldercreation = getIt<FolderCreationViewModel>();

@injectable
class FolderCreationViewModel extends FolderCreationViewModelBase
    with _$FolderCreationViewModel {
  FolderCreationViewModel(IAllFolderCreationService OhsfolderCreationService)
      : super(OhsfolderCreationService);
}

abstract class FolderCreationViewModelBase with Store {
  final IAllFolderCreationService OhsfolderCreationService;

  FolderCreationViewModelBase(this.OhsfolderCreationService);

  @observable
  ApiResponse<String> FoldercreationResponse = ApiResponse<String>();

  @action
  Future<void> ohsfoldercreationviewmodelfunction(
      String folderName, int id) async {
    print('aaaaa$FoldercreationResponse');
    FoldercreationResponse =
        FoldercreationResponse.copyWith(error: null, loading: true);

    final result = await OhsfolderCreationService.ohsnewsfoldercreationfunction(
        folderName, id);
    return result.fold(
      (l) {
        FoldercreationResponse = FoldercreationResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        FoldercreationResponse = FoldercreationResponse.copyWith(
          error: null,
          loading: false,
        );
        vmohsnewsfolder.ohsnewsfolderviewmodelfunction(id);
      },
    );
  }
}
