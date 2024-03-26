import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/ohs_folder_rename/i_folde_rename_service.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_news_folder/oh&s_news_fldr_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';
part 'folder_rename_viewmodel.g.dart';

final vmohsrename = getIt<FoldersRenameViewModel>();

@injectable
class FoldersRenameViewModel extends FoldersRenameViewModelBase
    with _$FoldersRenameViewModel {
  FoldersRenameViewModel(Ifolderrename folderrenameService)
      : super(folderrenameService);
}

abstract class FoldersRenameViewModelBase with Store {
  final Ifolderrename folderrenameService;

  FoldersRenameViewModelBase(this.folderrenameService);

  @observable
  ApiResponse<String> renameResponse = ApiResponse<String>();

  @action
  Future<void> folderrenameviewmodelfunction(String folderName, int id) async {
    renameResponse = renameResponse.copyWith(error: null, loading: true);

    print(id);
    print(
      folderName,
    );
    final result =
        await folderrenameService.ohsnewsfolderrenamefunction(folderName, id);
    return result.fold(
      (l) {
        print('Error occurred during folder rename: $l');
        renameResponse = renameResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        print('Folder rename successful!');
        renameResponse = renameResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        vmohsnewsfolder.ohsnewsfolderviewmodelfunction(1);
      },
    );
  }
}
