// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';
import '../transfer/aws_transfer_server.dart';

/// Sensitive field paths for `aws_transfer_server`.
const Set<String> _awsTransferServerSensitive = <String>{};

/// Factory wrapper for `aws_transfer_server`.
final class DataAwsTransferServer extends Data {
  static const String tfType = 'aws_transfer_server';

  DataAwsTransferServer({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> serverId,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'region': ?region, 'server_id': serverId, 'tags': ?tags},
       );

  @override
  Set<String> get sensitiveFields => _awsTransferServerSensitive;

  /// A reference to the `aws_transfer_server` this data source reads, for
  /// arguments typed `RefTo<AwsTransferServer>`.
  RefTo<AwsTransferServer> get ref =>
      RefTo.read(this); // ignore: invalid_use_of_internal_member

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `endpoint` attribute.
  TfRef<String> get endpoint => TfRef.attribute<String>(this, 'endpoint');

  /// Reference to `endpoint_type` attribute.
  TfRef<String> get endpointType =>
      TfRef.attribute<String>(this, 'endpoint_type');

  /// Reference to `identity_provider_type` attribute.
  TfRef<String> get identityProviderType =>
      TfRef.attribute<String>(this, 'identity_provider_type');

  /// Reference to `invocation_role` attribute.
  TfRef<String> get invocationRole =>
      TfRef.attribute<String>(this, 'invocation_role');

  /// Reference to `ip_address_type` attribute.
  TfRef<String> get ipAddressType =>
      TfRef.attribute<String>(this, 'ip_address_type');

  /// Reference to `logging_role` attribute.
  TfRef<String> get loggingRole =>
      TfRef.attribute<String>(this, 'logging_role');

  /// Reference to `protocols` attribute.
  TfRef<List<String>> get protocols =>
      TfRef.attribute<List<String>>(this, 'protocols');

  /// Reference to `security_policy_name` attribute.
  TfRef<String> get securityPolicyName =>
      TfRef.attribute<String>(this, 'security_policy_name');

  /// Reference to `structured_log_destinations` attribute.
  TfRef<List<String>> get structuredLogDestinations =>
      TfRef.attribute<List<String>>(this, 'structured_log_destinations');

  /// Reference to `url` attribute.
  TfRef<String> get url => TfRef.attribute<String>(this, 'url');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `server_id` attribute.
  TfRef<String> get serverId => TfRef.attribute<String>(this, 'server_id');

  /// Reference to `tags` attribute.
  TfRef<Map<String, String>> get tags =>
      TfRef.attribute<Map<String, String>>(this, 'tags');
}
