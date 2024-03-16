import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/oh&s_news_page/i_all_oh&s_service.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'oh&s_viewmodel.g.dart';

final vmohsnews = getIt<OhsNewsViewModel>();

@injectable
class OhsNewsViewModel extends OhsNewsViewModelBase with _$OhsNewsViewModel {
  OhsNewsViewModel(IAllOhsService OhsService) : super(OhsService);
}

abstract class OhsNewsViewModelBase with Store {
  final IAllOhsService OhsService;

  OhsNewsViewModelBase(this.OhsService);

  @observable
  ApiResponse<List<OhsRespModel>> newspageResponse =
      ApiResponse<List<OhsRespModel>>();

  @action
  Future<void> ohsnewsviewmodelfunction() async {
    print('aaaaa$newspageResponse');
    newspageResponse = newspageResponse.copyWith(error: null, loading: true);

    final result = await OhsService.ohsnewsfunction();
    return result.fold(
      (l) {
        newspageResponse = newspageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        newspageResponse = newspageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
