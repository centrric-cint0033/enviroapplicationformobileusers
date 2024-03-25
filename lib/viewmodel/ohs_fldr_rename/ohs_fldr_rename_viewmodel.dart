import 'package:enviro_mobile_application/utilis/injection.dart';

import 'package:enviro_mobile_application/view/service/ohs_folder_rename/i_all_foldr_rename_service.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'ohs_fldr_rename_viewmodel.g.dart';

final vmfolderrename = getIt<FolderRenameViewModel>();

@injectable
class FolderRenameViewModel extends FolderRenameViewModelBase
    with _$FolderRenameViewModel {
  FolderRenameViewModel(IAllFolderRenameService folderrenameService)
      : super(folderrenameService);
}

abstract class FolderRenameViewModelBase with Store {
  final IAllFolderRenameService folderrenameService;
  FolderRenameViewModelBase(this.folderrenameService);

  @observable
  ApiResponse<String> FolderrenameResponse = ApiResponse<String>();

  @action
  Future<void> ohsfoldercreationviewmodelfunction(
      String folderName, int id) async {
    print('aaaaa$FolderrenameResponse');
    FolderrenameResponse =
        FolderrenameResponse.copyWith(error: null, loading: true);

    final result =
        await folderrenameService.folderrenamefunction(folderName, id);
    return result.fold(
      (l) {
        FolderrenameResponse = FolderrenameResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        FolderrenameResponse = FolderrenameResponse.copyWith(
          error: null,
          loading: false,
        );
        // vmohsnewsfolder.ohsnewsfolderviewmodelfunction(id);
      },
    );
  }
}
