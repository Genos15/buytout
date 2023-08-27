import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';

final gqlClientProvider =
    Provider.autoDispose((ref) => GQLClientBuilder.construct(
          wsLinkRef: Environment.gqlWsLinkRef,
          baseLinkRef: Environment.gqlBaseLinkRef,
        ));
