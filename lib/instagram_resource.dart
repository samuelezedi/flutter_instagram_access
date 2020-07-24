
import 'package:flutter_instagram_feeds/config.dart';

class Instagram {

  static String _appId = Config.appId;
  static String _appSecret = Config.appSecret;
  static String _redirectUrl = Config.redirectUrl;
  final String getCode;
  static String _baseUrl = 'https://api.instagram.com/';
  String userAccessToken;

  String autorizationUrl;

  Instagram({this.getCode}) {
    _setAuthorizationUrl();
  }

  _setAuthorizationUrl() async {
    var getVar = 'app_id=$_appId&redirect_uri=$_redirectUrl&scope=user_profile,user_media&response_type=code';
    autorizationUrl = _baseUrl+'oauth/authorize?'+getVar;
  }

  setUserAccessToken({code}) {
    if(code != null){
      userAccessToken = code;
    }
  }

  getUserAccessToken() {
//    var data = {
//      'app_id': _appId,
//      'app_secret' : _appSecret,
//      'grant_type' : 'authorization_code',
//      'redirect_uri' : _redirectUrl,
//      'code' :
//    };
  }

}