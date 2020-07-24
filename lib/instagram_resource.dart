
import 'package:flutter_instagram_feeds/config.dart';

class Instagram {

  static String _appId = Config.appId;
  static String _appSecret = Config.appSecret;
  static String _redirectUrl = Config.redirectUrl;
  final String getCode;
  static String _baseUrl = 'https://api.instagram.com/';

  String autorizationUrl;

  Instagram({this.getCode}) {
    _setAuthorizationUrl();
  }

  _setAuthorizationUrl() async {
    var getVar = 'app_id&$_appId&redirectUrl=$_redirectUrl&scope=user_profile,use_media&response_type=code';
    autorizationUrl = _baseUrl+'oauth/authorize?'+getVar;
  }

}