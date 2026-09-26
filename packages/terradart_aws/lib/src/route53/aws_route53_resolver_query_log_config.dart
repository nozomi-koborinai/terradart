// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_route53_resolver_query_log_config`.
const Set<String> _awsRoute53ResolverQueryLogConfigSensitive = <String>{};

/// Factory wrapper for `aws_route53_resolver_query_log_config`.
final class AwsRoute53ResolverQueryLogConfig extends Resource {
  static const String tfType = 'aws_route53_resolver_query_log_config';

  AwsRoute53ResolverQueryLogConfig({
    required super.localName,
    required TfArg<String> destinationArn,
    required TfArg<String> name,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'destination_arn': destinationArn,
           'name': name,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverQueryLogConfigSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `share_status` attribute.
  TfRef<String> get shareStatus =>
      TfRef.attribute<String>(this, 'share_status');
}
