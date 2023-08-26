import 'dart:io';

import 'package:buytout/shared/extensions/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefreshableScaffold extends StatelessWidget {
  final List<Widget> slivers;
  final List<Widget> overlays;
  final Future<void> Function()? onRefresh;
  final Widget? header;
  final ScrollController? scrollController;
  final double gap;

  const RefreshableScaffold({
    Key? key,
    required this.slivers,
    this.onRefresh,
    this.overlays = const <Widget>[],
    this.header,
    this.scrollController,
    this.gap = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safePadding = MediaQuery.of(context).padding.bottom;
    return switch (Platform.isIOS) {
      true => _RefreshableScaffoldIOS(
          slivers: slivers,
          onRefresh: onRefresh,
          overlays: overlays,
          scrollController: scrollController,
          gap: gap,
          header: header,
          safePadding: safePadding,
        ),
      _ when Platform.isAndroid => _RefreshableScaffoldAndroid(
          slivers: slivers,
          onRefresh: onRefresh,
          overlays: overlays,
          scrollController: scrollController,
          gap: gap,
          header: header,
          safePadding: safePadding,
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

class _RefreshableScaffoldAndroid extends StatelessWidget {
  final List<Widget> slivers;
  final List<Widget> overlays;
  final Future<void> Function()? onRefresh;
  final Widget? header;
  final ScrollController? scrollController;
  final double gap;
  final double safePadding;

  const _RefreshableScaffoldAndroid({
    Key? key,
    required this.slivers,
    required this.onRefresh,
    required this.overlays,
    required this.safePadding,
    this.scrollController,
    this.gap = 0.0,
    this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: RefreshIndicator(
          onRefresh: onRefresh ?? () async {},
          child: Stack(
            children: [
              CustomScrollView(
                controller: scrollController,
                slivers: [
                  if (header != null) header!,
                  ...slivers,
                ],
              ),
              ...overlays,
            ],
          ).pOnly(bottom: safePadding),
        ),
      ),
    );
  }
}

class _RefreshableScaffoldIOS extends StatelessWidget {
  final List<Widget> slivers;
  final List<Widget> overlays;
  final Future<void> Function()? onRefresh;
  final Widget? header;
  final ScrollController? scrollController;
  final double gap;
  final double safePadding;

  const _RefreshableScaffoldIOS({
    Key? key,
    required this.slivers,
    required this.onRefresh,
    required this.overlays,
    this.scrollController,
    required this.safePadding,
    this.gap = 0.0,
    this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            CustomScrollView(
              controller: scrollController,
              slivers: [
                if (header != null) header!,
                CupertinoSliverRefreshControl(
                  onRefresh: onRefresh ?? () async {},
                ),
                ...slivers
              ],
            ),
            ...overlays,
          ],
        ).pOnly(bottom: safePadding),
      ),
    );
  }
}
