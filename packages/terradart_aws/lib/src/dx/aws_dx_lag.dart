// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_lag`.
const Set<String> _awsDxLagSensitive = <String>{};

/// Factory wrapper for `aws_dx_lag`.
final class AwsDxLag extends Resource {
  static const String tfType = 'aws_dx_lag';

  AwsDxLag(
    super.localName, {
    TfArg<String>? connectionId,
    required TfArg<String> connectionsBandwidth,
    TfArg<bool>? forceDestroy,
    required TfArg<String> location,
    required TfArg<String> name,
    TfArg<String>? providerName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'connection_id': ?connectionId,
           'connections_bandwidth': connectionsBandwidth,
           'force_destroy': ?forceDestroy,
           'location': location,
           'name': name,
           'provider_name': ?providerName,
           'region': ?region,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxLagSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsDxLag>`.
  RefTo<AwsDxLag> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `has_logical_redundancy` attribute.
  TfRef<String> get hasLogicalRedundancy =>
      TfRef.attribute<String>(this, 'has_logical_redundancy');

  /// Reference to `jumbo_frame_capable` attribute.
  TfRef<bool> get jumboFrameCapable =>
      TfRef.attribute<bool>(this, 'jumbo_frame_capable');

  /// Reference to `owner_account_id` attribute.
  TfRef<String> get ownerAccountId =>
      TfRef.attribute<String>(this, 'owner_account_id');

  /// Reference to `rate_limiter_status` attribute.
  TfRef<List<Map<String, Object?>>> get rateLimiterStatus =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'rate_limiter_status');

  /// Reference to `connection_id` attribute.
  TfRef<String> get connectionId =>
      TfRef.attribute<String>(this, 'connection_id');

  /// Reference to `connections_bandwidth` attribute.
  TfRef<String> get connectionsBandwidth =>
      TfRef.attribute<String>(this, 'connections_bandwidth');

  /// Reference to `force_destroy` attribute.
  TfRef<bool> get forceDestroy => TfRef.attribute<bool>(this, 'force_destroy');

  /// Reference to `location` attribute.
  TfRef<String> get location => TfRef.attribute<String>(this, 'location');

  /// Reference to `provider_name` attribute.
  TfRef<String> get providerName =>
      TfRef.attribute<String>(this, 'provider_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
