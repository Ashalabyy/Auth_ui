import 'package:auth_ui/constants/size_config.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final String title;
  final Widget? leading;
  final Widget? titlewidget;
  final VoidCallback? onclick;
  final bool isActionButton;
  const CustomAppBar(
      {this.titlewidget,
      this.leading,
      this.onclick,
      this.isActionButton = false,
      this.title = '',
      super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Theme.of(context).secondaryHeaderColor,
          ),
          Positioned.fill(
            child: titlewidget == null
                ? Center(
                    child: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyText2,
                  ))
                : Center(
                    child: titlewidget!,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (isActionButton)
                  leading ??
                      Transform.translate(
                        offset: const Offset(-14, 0),
                        child: GestureDetector(
                          onTap: onclick,
                          child: Container(
                            width: 35,
                            height: 45,
                            decoration: BoxDecoration(
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                /*    
                if (isActionButton)
                  Transform.translate(
                    offset: const Offset(10, 0),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize =>
      Size(double.infinity, SizeConfig.screenHeight! * 0.08);
}
