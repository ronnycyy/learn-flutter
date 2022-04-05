import 'package:flutter/material.dart';

import 'package:two_you_friend/util/struct/article_summary_struct.dart';
import 'package:two_you_friend/util/struct/user_info_struct.dart';

import 'package:two_you_friend/widgets/home_page/article_bottom_bar.dart';
import 'package:two_you_friend/widgets/home_page/article_like_bar.dart';
import 'package:two_you_friend/widgets/home_page/article_summary.dart';

/// 此为帖子描述类，包括了帖子UI中的所有元素
class ArticleCard extends StatelessWidget {
  /// 传入的用户信息
  final UserInfoStruct userInfo;

  /// 传入的帖子信息
  final ArticleSummaryStruct articleInfo;

  /// 构造函数
  const ArticleCard(
      {required Key key, required this.userInfo, required this.articleInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ArticleSummary(
          key: const Key('3'),
          title: articleInfo.title,
          summary: articleInfo.summary,
          articleImage: articleInfo.articleImage,
        ),
        Row(
          children: <Widget>[
            ArticleBottomBar(
                key: const Key('articleBottomBar'),
                nickname: userInfo.nickname,
                headerImage: userInfo.headerImage,
                commentNum: articleInfo.commentNum),
            ArticleLikeBar(
                key: const Key('ArticleLikeBar'), likeNum: articleInfo.likeNum)
          ],
        ),
      ],
    );
  }
}
