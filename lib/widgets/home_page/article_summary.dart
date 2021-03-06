import 'package:flutter/material.dart';

/// 帖子概要信息
///
/// 包括帖子的标题，帖子描述和帖子中的图片 2 3 4
class ArticleSummary extends StatelessWidget {
  /// 帖子标题
  final String title;

  /// 帖子概要描述信息
  final String summary;

  /// 帖子中的图片信息
  final String articleImage;

  /// 构造函数
  const ArticleSummary({
    required this.title,
    required this.summary,
    required this.articleImage,
    required Key key,
  }) : super(key: key);

  /// 左侧的标题和标题描述组件 2 3
  Widget getLeftInfo() {
    return Column(
      children: <Widget>[Text(title), Text(summary)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        getLeftInfo(),
        // 4
        Image.network(
          articleImage,
          width: 80.0,
          height: 80.0,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
