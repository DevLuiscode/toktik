import '../model/other_profile_model.dart';

abstract class OtherProfileRepository {
  Future<OtherProfileModel> gelUser(String user);
}
