import 'package:duovie/Auth/navigator/views/login_navigator.dart';
import 'package:duovie/BottomNavigation/bottom_navigation.dart';
import 'package:duovie/Chat/chat_page.dart';
import 'package:duovie/Screens/user_profile.dart';
import 'package:flutter/material.dart';

import '../BottomNavigation/AddVideo/views/add_video.dart';
import '../BottomNavigation/AddVideo/views/add_video_filter.dart';
import '../BottomNavigation/AddVideo/views/post_info.dart';
import '../BottomNavigation/Explore/views/more_page.dart';
import '../BottomNavigation/Explore/views/search_users.dart';
import '../BottomNavigation/MyProfile/views/badge_request.dart';
import '../BottomNavigation/MyProfile/views/followers.dart';
import '../BottomNavigation/MyProfile/views/help_page.dart';
import '../BottomNavigation/MyProfile/views/language_page.dart';
import '../BottomNavigation/MyProfile/views/tnc.dart';
import '../BottomNavigation/MyProfile/views/video_option.dart';

class PageRoutes {
  static const String loginNavigator = 'login_navigator';
  static const String bottomNavigation = 'bottom_navigation';
  static const String followersPage = 'followers_page';
  static const String helpPage = 'help_page';
  static const String tncPage = 'tnc_page';
  static const String searchPage = 'search_page';
  static const String addVideoPage = 'add_video_page';
  static const String addVideoFilterPage = 'add_video_filter_page';
  static const String postInfoPage = 'post_info_page';
  static const String userProfilePage = 'user_profile_page';
  static const String chatPage = 'chat_page';
  static const String morePage = 'more_page';
  static const String videoOptionPage = 'video_option_page';
  static const String verifiedBadgePage = 'verified_badge_page';
  static const String languagePage = 'language_page';

  Map<String, WidgetBuilder> routes() {
    return {
      loginNavigator: (context) => LoginNavigator(),
      bottomNavigation: (context) => BottomNavigation(),
      followersPage: (context) => FollowersPage(),
      helpPage: (context) => HelpPage(),
      tncPage: (context) => TnC(),
      searchPage: (context) => SearchUsers(),
      addVideoPage: (context) => AddVideo(),
      addVideoFilterPage: (context) => AddVideoFilter(),
      postInfoPage: (context) => PostInfo(),
      userProfilePage: (context) => UserProfilePage(),
      chatPage: (context) => ChatPage(),
      morePage: (context) => MorePage(),
      videoOptionPage: (context) => VideoOptionPage(),
      verifiedBadgePage: (context) => BadgeRequest(),
      languagePage: (context) => ChangeLanguagePage(),
    };
  }
}
