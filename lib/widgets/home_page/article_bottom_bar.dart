import 'package:flutter/material.dart';

/// 帖子下面的信息栏 5 6 7 8
///
/// 包括用户头像、昵称和评论信息，但不包括点赞，因为点赞为动态组件
/// 需要参数[nickname]、[headerImage]、[commentNum]
class ArticleBottomBar extends StatelessWidget {
  /// 用户昵称
  final String nickname;
  /// 用户头像
  final String headerImage;
  /// 评论数量
  final int commentNum;

  /// 构造函数
  const ArticleBottomBar(
      {required Key key,
      required this.nickname,
      required this.headerImage,
      required this.commentNum})
      : super(key: key);

  // 帖子栏中的用户头像和昵称信息 5 6
  Widget getUserWidget() {
    return Row(
      children: <Widget>[
        Image.network(
          headerImage,
          width: 15.0,
          height: 15.0,
          fit: BoxFit.cover,
        ),
        Text(nickname),
      ],
    );
  }

  // 帖子栏中的评论信息 7 8
  Widget getCommentWidget() {
    return Row(
      children: <Widget>[
        const Icon(Icons.comment, color: Colors.grey, size: 18),
        const Padding(padding: EdgeInsets.only(left: 10)),
        Text('$commentNum'),
      ],
    );
  }

  // 组件的自渲染逻辑，类似于 React 类组件的 render 方法
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[getUserWidget(), getCommentWidget()],
    );
  }
}
