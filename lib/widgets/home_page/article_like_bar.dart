import 'package:flutter/material.dart';

/// 帖子文章的赞组件
///
/// 包括点赞组件 icon ，以及组件点击效果
/// 需要外部参数[likeNum],点赞数量
class ArticleLikeBar extends StatefulWidget {
  /// 外部传入参数
  // 编译时不知道的值，用 final
  final int likeNum;

  /// 构造函数
  const ArticleLikeBar({required Key key, required this.likeNum})
      : super(key: key);

  @override
  createState() => ArticleLikeBarState();
}

/// 帖子d文章的赞组件的状态管理类
///
/// 内部包括组件的点赞效果，点击后触发数字更新操作
/// [likeNum] 为状态组件可变数据
class ArticleLikeBarState extends State<ArticleLikeBar> {
  /// 状态 state
  late int likeNum;

  @override
  void initState() {
    super.initState();
    likeNum;
  }

  /// 点赞动作效果，点击后[likeNum]加1
  void like() {
    setState(() {
      likeNum = ++likeNum;
    });
  }

  /// 有状态类返回组件信息
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Icon(Icons.thumb_up, color: Colors.grey, size: 18),
        const Padding(padding: EdgeInsets.only(left: 10)),
        TextButton(
          child: Text('$likeNum'),
          onPressed: () => like(),
        ),
      ],
    );
  }
}
