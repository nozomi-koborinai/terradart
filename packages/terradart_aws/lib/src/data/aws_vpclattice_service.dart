// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_service`.
const Set<String> _awsVpclatticeServiceSensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_service`.
final class DataAwsVpclatticeService extends Data {
  static const String tfType = 'aws_vpclattice_service';

  DataAwsVpclatticeService({
    required super.localName,
    TfArg<String>? name,
    TfArg<String>? region,
    TfArg<String>? serviceIdentifier,
    TfArg<Map<String, String>>? tags,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (name != null) 'name': name,
           if (region != null) 'region': region,
           if (serviceIdentifier != null)
             'service_identifier': serviceIdentifier,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsVpclatticeServiceSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `auth_type` attribute.
  TfRef<String> get authType => TfRef.attribute<String>(this, 'auth_type');

  /// Reference to `certificate_arn` attribute.
  TfRef<String> get certificateArn =>
      TfRef.attribute<String>(this, 'certificate_arn');

  /// Reference to `custom_domain_name` attribute.
  TfRef<String> get customDomainName =>
      TfRef.attribute<String>(this, 'custom_domain_name');

  /// Reference to `dns_entry` attribute.
  TfRef<List<Map<String, Object?>>> get dnsEntry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_entry');

  /// Reference to `idle_timeout_seconds` attribute.
  TfRef<num> get idleTimeoutSeconds =>
      TfRef.attribute<num>(this, 'idle_timeout_seconds');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
