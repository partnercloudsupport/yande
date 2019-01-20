import 'package:yande/widget/all_widget.dart';
import 'package:flutter/material.dart';

class LazyLoadGridView extends StatelessWidget {
  final ScrollController controller;
  final List<Widget> children;
  final int crossAxisCount;
  final Widget footer;

  LazyLoadGridView({
    this.crossAxisCount = 2,
    this.controller,
    this.children,
    this.footer = const FootProgress(),
  }):assert(children != null && children.length > 0);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      controller: this.controller,
      children: <Widget>[
        new GridView.count(
          physics: new NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: this.crossAxisCount,
          children: this.children
        ),
        this.footer,
      ],
    );
  }

}