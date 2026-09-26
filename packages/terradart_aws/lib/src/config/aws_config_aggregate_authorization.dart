// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_aggregate_authorization`.
const Set<String> _awsConfigAggregateAuthorizationSensitive = <String>{};

/// Factory wrapper for `aws_config_aggregate_authorization`.
final class AwsConfigAggregateAuthorization extends Resource {
  static const String tfType = 'aws_config_aggregate_authorization';

  AwsConfigAggregateAuthorization({
    required super.localName,
    required TfArg<String> accountId,
    TfArg<String>? authorizedAwsRegion,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           if (authorizedAwsRegion != null)
             'authorized_aws_region': authorizedAwsRegion,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigAggregateAuthorizationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
