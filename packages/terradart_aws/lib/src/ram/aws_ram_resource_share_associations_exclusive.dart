// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ram_resource_share_associations_exclusive`.
const Set<String> _awsRamResourceShareAssociationsExclusiveSensitive =
    <String>{};

/// Factory wrapper for `aws_ram_resource_share_associations_exclusive`.
final class AwsRamResourceShareAssociationsExclusive extends Resource {
  static const String tfType = 'aws_ram_resource_share_associations_exclusive';

  AwsRamResourceShareAssociationsExclusive({
    required super.localName,
    TfArg<List<String>>? principals,
    TfArg<String>? region,
    TfArg<List<String>>? resourceArns,
    required TfArg<String> resourceShareArn,
    TfArg<List<String>>? sources,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (principals != null) 'principals': principals,
           if (region != null) 'region': region,
           if (resourceArns != null) 'resource_arns': resourceArns,
           'resource_share_arn': resourceShareArn,
           if (sources != null) 'sources': sources,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsRamResourceShareAssociationsExclusiveSensitive;
}
