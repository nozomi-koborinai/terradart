// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../vpclattice/aws_vpclattice_listener.dart';

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
           'region': ?region,
           'service_identifier': serviceIdentifier,
           'tags': ?tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeListenerSensitive;

  /// A reference to the `aws_vpclattice_listener` this data source reads, for
  /// arguments typed `RefTo<AwsVpclatticeListener>`.
  RefTo<AwsVpclatticeListener> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

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

  /// Reference to `listener_identifier` attribute.
  TfRef<String> get listenerIdentifier =>
      TfRef.attribute<String>(this, 'listener_identifier');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `service_identifier` attribute.
  TfRef<String> get serviceIdentifier =>
      TfRef.attribute<String>(this, 'service_identifier');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
