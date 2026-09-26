// packages/terradart_aws/lib/provider.dart
/// Provider block factory and version constants for `hashicorp/aws`.
///
/// Import this alongside one or more per-service barrels:
/// ```dart
/// import 'package:terradart_aws/provider.dart';
/// import 'package:terradart_aws/lambda.dart';
/// ```
library;

export 'src/aws_provider.dart'
    show
        AwsAssumeRole,
        AwsIgnoreTags,
        AwsProvider,
        kAwsProviderSource,
        kAwsProviderVersionConstraint;
