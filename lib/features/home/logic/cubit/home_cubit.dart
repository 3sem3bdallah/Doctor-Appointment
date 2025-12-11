import '../../../../core/helpers/extensions.dart';
import '../../data/models/specialization_response_model.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/repo/home_repo.dart';
import 'home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationDataList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();

    response.when(
      success: (specializationsResponseModel) {
        specializationDataList =
            specializationsResponseModel.specializationDataList ?? [];
        // getting the doctors list for the first specializaion by default
        getDoctorsList(specializationId: specializationDataList?.first?.id);
        emit(HomeState.specializationsSuccess(specializationDataList));
      },
      failure: (apiErrorModel) {
        emit(HomeState.specializationsError(apiErrorModel));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList = getDoctorsListBySpecializationId(
      specializationId,
    );
    if (!doctorsList!.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(const HomeState.doctorsError());
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationDataList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
