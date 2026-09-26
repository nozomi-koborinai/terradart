// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_listener`.
const Set<String> _awsVpclatticeListenerSensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_listener`.
final class DataAwsVpclatticeListener extends Data {
  static const String tfType = 'aws_vpclattice_listener';

  DataAwsVpclatticeListener({
    required super.localName,
    required TfArg<String> listenerIdentifier,
    TfArg<String>? region,
    required TfArg<String> serviceIdentifier,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'listener_identifier': listenerIdentifier,
           if (region != null) 'region': region,
           'service_identifier': serviceIdentifier,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeListenerSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `created_at` attribute.
  TfRef<String> get createdAt => TfRef.attribute<String>(this, 'created_at');

  /// Reference to `default_action` attribute.
  TfRef<List<Map<String, Object?>>> get defaultAction =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'default_action');

  /// Reference to `last_updated_at` attribute.
  TfRef<String> get lastUpdatedAt =>
      TfRef.attribute<String>(this, 'last_updated_at');

  /// Reference to `listener_id` attribute.
  TfRef<String> get listenerId => TfRef.attribute<String>(this, 'listener_id');

  /// Reference to `port` attribute.
  TfRef<num> get port => TfRef.attribute<num>(this, 'port');

  /// Reference to `protocol` attribute.
  TfRef<String> get protocol => TfRef.attribute<String>(this, 'protocol');

  /// Reference to `service_arn` attribute.
  TfRef<String> get serviceArn => TfRef.attribute<String>(this, 'service_arn');

  /// Reference to `service_id` attribute.
  TfRef<String> get serviceId => TfRef.attribute<String>(this, 'service_id');
}
