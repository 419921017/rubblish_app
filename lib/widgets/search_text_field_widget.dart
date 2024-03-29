import 'package:flutter/material.dart';

///文本搜索框
class SearchTextFieldWidget extends StatelessWidget {
  final ValueChanged<String> onSubmitted;
  final ValueChanged<String> onChanged;
  final VoidCallback onClose;
  final VoidCallback onTab;
  final String hintText;
  final EdgeInsetsGeometry margin;
  String content;

  SearchTextFieldWidget({Key key, this.hintText, this.onSubmitted, this.onChanged,this.onTab, this.margin, this.onClose})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin == null ? EdgeInsets.all(0.0) : margin,
      width: MediaQuery.of(context).size.width,
      alignment: AlignmentDirectional.center,
      height: 37.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 237, 236, 237),
        borderRadius: BorderRadius.circular(24.0)),
        child: TextField(
          onSubmitted: onSubmitted,
          onChanged: onChanged,
          onTap: onTab,
          cursorColor: Color.fromARGB(255, 0, 189, 96),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 6.0),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 17, color: Color.fromARGB(255, 192, 191, 191)),
                prefixIcon: Icon(
                  Icons.search,
                  size: 25,
                  color: Color.fromARGB(255, 128, 128, 128),
                ),
            ),
            style: TextStyle(fontSize: 17),
        ),
    );
  }
}


