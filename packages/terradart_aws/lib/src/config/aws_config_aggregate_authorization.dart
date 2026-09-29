// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_config_aggregate_authorization`.
const Set<String> _awsConfigAggregateAuthorizationSensitive = <String>{};

/// Exactly one of `authorized_aws_region`, `region` on `aws_config_aggregate_authorization`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.authorizedAwsRegion(...)`.
sealed class ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion {
  const ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion();

  /// Sets `authorized_aws_region`.
  const factory ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion.authorizedAwsRegion(
    TfArg<String> authorizedAwsRegion,
  ) = ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegionAuthorizedAwsRegion;

  /// Sets `region`.
  const factory ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion.region(
    TfArg<String> region,
  ) = ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegionRegion;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion.authorizedAwsRegion] choice: sets `authorized_aws_region`.
final class ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegionAuthorizedAwsRegion
    extends ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion {
  const ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegionAuthorizedAwsRegion(
    this.authorizedAwsRegion,
  );

  final TfArg<String> authorizedAwsRegion;

  @override
  String get blockKey => 'authorized_aws_region';

  @override
  Map<String, Object?> encode() => {
    'authorized_aws_region': authorizedAwsRegion.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'authorized_aws_region': authorizedAwsRegion,
  };
}

/// The [ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion.region] choice: sets `region`.
final class ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegionRegion
    extends ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion {
  const ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegionRegion(
    this.region,
  );

  final TfArg<String> region;

  @override
  String get blockKey => 'region';

  @override
  Map<String, Object?> encode() => {'region': region.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'region': region};
}

/// Factory wrapper for `aws_config_aggregate_authorization`.
final class AwsConfigAggregateAuthorization extends Resource {
  static const String tfType = 'aws_config_aggregate_authorization';

  AwsConfigAggregateAuthorization({
    required super.localName,
    required TfArg<String> accountId,
    required ConfigAggregateAuthorizationAuthorizedAwsRegionOrRegion
    authorizedAwsRegionOrRegion,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           ...authorizedAwsRegionOrRegion.argMap,
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
