import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeNewArrivalProductFragmentSkeleton extends StatelessWidget {
  final int size;

  const HomeNewArrivalProductFragmentSkeleton({Key? key, this.size = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: LayoutDimens.s192,
      child: ListView.separated(
        key: UniqueKey(),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: size,
        padding: const EdgeInsets.symmetric(horizontal: LayoutDimens.p8),
        itemBuilder: (context, _) {
          return const _HomeNewArrivalProductCardSkeleton();
        },
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        addSemanticIndexes: false,
        separatorBuilder: (BuildContext context, int index) {
          return const SpacerLine.horizontal();
        },
      ),
    );
  }
}

class _HomeNewArrivalProductCardSkeleton extends StatelessWidget {
  const _HomeNewArrivalProductCardSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: LayoutDimens.e0,
      child: SizedBox(
        width: LayoutDimens.s192,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: LayoutDimens.ar16_9,
              child: Container(color: CommonColors.red10.color),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextWidgetExtension.longTextSkeleton,
                  TextSpanWidgetExtension.breaker,
                  TextSpanWidgetExtension.gap,
                  TextWidgetExtension.shortTextSkeleton,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
