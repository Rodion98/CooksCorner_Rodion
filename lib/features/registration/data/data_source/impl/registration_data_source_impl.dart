import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_client.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_paths.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/data_source/registration_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/models/registration_model/registration_model.dart';

@Injectable(as: RegistrationDataSource)
class RegistrationDataSourceImpl implements RegistrationDataSource {
  final HttpClient _client;

  RegistrationDataSourceImpl(
    this._client,
  );

  @override
  Future<void> registration({
    RegistrationModel? registrationModel,
  }) async {
    try {
      final response = await _client.post(
        HttpPaths.registration,
        data: {
          "email": registrationModel!.email,
          "name": registrationModel.name,
          "password": registrationModel.password,
          "confirmPassword": registrationModel.confirmPassword
        },
        isSecure: false,
      );
      print(response);
    } catch (e) {
      print('Error: $e');
    }
  }
}
