import 'package:enviro_mobile_application/model/oh&snews_folder/oh&snews_fldr_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/oh&s_news_folder/i_all_oh&s_news_fldr.dart';
import 'package:enviro_mobile_application/viewmodel/folder_creation/folder_creation_viewmodel.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'oh&s_news_fldr_view_model.g.dart';

final vmohsnewsfolder = getIt<OhsNewsFolderViewModel>();

@injectable
class OhsNewsFolderViewModel extends OhsNewsFolderViewModelBase
    with _$OhsNewsFolderViewModel {
  OhsNewsFolderViewModel(IAllOhsNewsFolderService OhsnewsfoldrService)
      : super(OhsnewsfoldrService);
}

abstract class OhsNewsFolderViewModelBase with Store {
  final IAllOhsNewsFolderService OhsnewsfoldrService;

  OhsNewsFolderViewModelBase(this.OhsnewsfoldrService);

  @observable
  ApiResponse<OhsNewsfldrRespModel> newspagefolderResponse =
      ApiResponse<OhsNewsfldrRespModel>();

  @action
  Future<void> ohsnewsfolderviewmodelfunction(int id) async {
    newspagefolderResponse =
        newspagefolderResponse.copyWith(error: null, loading: true);

    final result = await OhsnewsfoldrService.ohsnewsfolderservicefunction(id);
    return result.fold(
      (l) {
        newspagefolderResponse = newspagefolderResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        newspagefolderResponse = newspagefolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<OhsNewsfldrRespModel> newspagefolderinsideResponse =
      ApiResponse<OhsNewsfldrRespModel>();

  @action
  Future<void> newspagefolderinsidefunction(int id) async {
    newspagefolderinsideResponse =
        newspagefolderinsideResponse.copyWith(error: null, loading: true);

    final result = await OhsnewsfoldrService.ohsnewsfolderservicefunction(id);
    return result.fold(
      (l) {
        newspagefolderinsideResponse = newspagefolderinsideResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        newspagefolderinsideResponse = newspagefolderinsideResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
