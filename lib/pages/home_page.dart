import 'package:flutter/material.dart';

import 'package:two_you_friend/util/struct/article_summary_struct.dart';
import 'package:two_you_friend/util/struct/user_info_struct.dart';

import 'package:two_you_friend/widgets/common/banner_info.dart';
import 'package:two_you_friend/widgets/home_page/article_card.dart';

/// 首页列表信息
///
/// 展示banner和帖子信息
class HomePage extends StatelessWidget {
  /// banner 地址信息
  final String bannerImage =
      'https://img.089t.com/content/20200227/osbbw9upeelfqnxnwt0glcht.jpg';

  /// 帖子标题
  final UserInfoStruct userInfo = const UserInfoStruct('flutter',
      'https://i.pinimg.com/originals/1f/00/27/1f0027a3a80f470bcfa5de596507f9f4.png');

  /// 帖子概要描述信息
  final ArticleSummaryStruct articleInfo = const ArticleSummaryStruct(
      '你好，交个朋友',
      '我是一个小可爱',
      'https://i.pinimg.com/originals/e0/64/4b/e0644bd2f13db50d0ef6a4df5a756fd9.png',
      20,
      30);

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(articleInfo.likeNum);

    return Column(
      children: <Widget>[
        BannerInfo(
          key: const Key('bannerInfo'),
          bannerImage: bannerImage,
        ),
        ArticleCard(
            key: const Key('ArticleCard'),
            userInfo: userInfo,
            articleInfo: articleInfo)
      ],
    );
  }
}
