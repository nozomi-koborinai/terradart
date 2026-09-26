// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_dx_lag`.
const Set<String> _awsDxLagSensitive = <String>{};

/// Factory wrapper for `aws_dx_lag`.
final class AwsDxLag extends Resource {
  static const String tfType = 'aws_dx_lag';

  AwsDxLag({
    required super.localName,
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
           if (connectionId != null) 'connection_id': connectionId,
           'connections_bandwidth': connectionsBandwidth,
           if (forceDestroy != null) 'force_destroy': forceDestroy,
           'location': location,
           'name': name,
           if (providerName != null) 'provider_name': providerName,
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsDxLagSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

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
}
