// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';
import '../route53/aws_route53_resolver_query_log_config.dart';

/// Sensitive field paths for `aws_route53_resolver_query_log_config`.
const Set<String> _awsRoute53ResolverQueryLogConfigSensitive = <String>{};

/// Typed helper for the `filter` block of
/// `aws_route53_resolver_query_log_config` (derived from provider schema).
@immutable
final class DataRoute53ResolverQueryLogConfigFilter {
  const DataRoute53ResolverQueryLogConfigFilter({
    required this.name,
    required this.values,
  });

  final TfArg<String> name;

  final TfArg<List<String>> values;

  Map<String, Object?> encode() => {
    'name': name.toTfJson(),
    'values': values.toTfJson(),
  };
}

/// Factory wrapper for `aws_route53_resolver_query_log_config`.
final class DataAwsRoute53ResolverQueryLogConfig extends Data {
  static const String tfType = 'aws_route53_resolver_query_log_config';

  DataAwsRoute53ResolverQueryLogConfig({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? resolverQueryLogConfigId,
    TfArg<Map<String, String>>? tags,
    List<DataRoute53ResolverQueryLogConfigFilter>? filter,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': ?name,
           'region': ?region,
           'resolver_query_log_config_id': ?resolverQueryLogConfigId,
           'tags': ?tags,
           if (filter != null)
             'filter': TfArg.literal([for (final e in filter) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRoute53ResolverQueryLogConfigSensitive;

  /// A reference to the `aws_route53_resolver_query_log_config` this data source reads, for
  /// arguments typed `RefTo<AwsRoute53ResolverQueryLogConfig>`.
  RefTo<AwsRoute53ResolverQueryLogConfig> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `destination_arn` attribute.
  TfRef<String> get destinationArn =>
      TfRef.attribute<String>(this, 'destination_arn');

  /// Reference to `owner_id` attribute.
  TfRef<String> get ownerId => TfRef.attribute<String>(this, 'owner_id');

  /// Reference to `share_status` attribute.
  TfRef<String> get shareStatus =>
      TfRef.attribute<String>(this, 'share_status');
}
