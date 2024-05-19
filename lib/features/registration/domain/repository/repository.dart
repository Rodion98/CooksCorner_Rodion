import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/models/registration_model/registration_model.dart';

abstract class RegistrationRepo {
  Future<void> registration(
    RegistrationModel? registrationModel,
  );
}
