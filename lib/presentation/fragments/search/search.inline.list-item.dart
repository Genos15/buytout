import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class SearchInlineListItem extends StatelessWidget {
  final void Function()? onTap;
  final void Function()? onDelete;
  final String title;
  final String category;
  final EdgeInsets padding;

  const SearchInlineListItem({
    super.key,
    this.onTap,
    required this.title,
    required this.category,
    this.onDelete,
    this.padding = const EdgeInsets.symmetric(horizontal: LayoutDimens.p8),
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        listTileTheme: ListTileThemeData(
          contentPadding: padding,
          minVerticalPadding: 0,
          dense: true,
          style: ListTileStyle.list,
          visualDensity:
              const VisualDensity(horizontal: 0, vertical: -LayoutDimens.s4),
        ),
      ),
      child: ListTile(
        leading: GestureDetector(
          onTap: onDelete,
          child: const Icon(CarbonIcons.close),
        ),
        title: AutoSizeText.rich(
          TextSpan(
            children: [
              TextSpan(text: title),
              TextSpan(
                text: ' dans $category',
                style: TextStyle(color: CommonColors.gray600.color),
              ),
            ],
          ),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(CarbonIcons.arrow_up_left),
        onTap: onTap,
      ),
    );
  }
}
