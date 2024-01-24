import '../data/network/network_api_services.dart';
import '../resources/app_url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();
  Future<dynamic> login(data) async {
    print('Login repo ko login chalyo');
    dynamic response = _apiServices.postAPI(ApiUrl.loginUrl, data);
    return response;
  }
}
