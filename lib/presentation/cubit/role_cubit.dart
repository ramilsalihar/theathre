import 'package:bloc/bloc.dart';

part 'role_state.dart';

class RoleCubit extends Cubit<RoleState> {
  RoleCubit() : super(RoleState.viewer);

  void setAsAdmin() {
    emit(RoleState.admin);
  }

  void setAsViewer() {
    emit(RoleState.viewer);
  }
}
