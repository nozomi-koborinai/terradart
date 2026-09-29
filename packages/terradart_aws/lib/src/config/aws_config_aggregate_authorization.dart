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
sealed class ConfigAggregateAuthorizationRegion {
  const ConfigAggregateAuthorizationRegion();

  /// Sets `authorized_aws_region`.
  const factory ConfigAggregateAuthorizationRegion.authorizedAwsRegion(
    TfArg<String> authorizedAwsRegion,
  ) = ConfigAggregateAuthorizationRegionAuthorizedAwsRegion;

  /// Sets `region`.
  const factory ConfigAggregateAuthorizationRegion.region(
    TfArg<String> region,
  ) = ConfigAggregateAuthorizationRegionChoice;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [ConfigAggregateAuthorizationRegion.authorizedAwsRegion] choice: sets `authorized_aws_region`.
final class ConfigAggregateAuthorizationRegionAuthorizedAwsRegion
    extends ConfigAggregateAuthorizationRegion {
  const ConfigAggregateAuthorizationRegionAuthorizedAwsRegion(
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

/// The [ConfigAggregateAuthorizationRegion.region] choice: sets `region`.
final class ConfigAggregateAuthorizationRegionChoice
    extends ConfigAggregateAuthorizationRegion {
  const ConfigAggregateAuthorizationRegionChoice(this.region);

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
    required ConfigAggregateAuthorizationRegion region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           ...region.argMap,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsConfigAggregateAuthorizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsConfigAggregateAuthorization>`.
  RefTo<AwsConfigAggregateAuthorization> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');
}
