// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_vpclattice_service`.
const Set<String> _awsVpclatticeServiceSensitive = <String>{};

/// Factory wrapper for `aws_vpclattice_service`.
final class AwsVpclatticeService extends Resource {
  static const String tfType = 'aws_vpclattice_service';

  AwsVpclatticeService({
    required super.localName,
    TfArg<String>? authType,
    TfArg<String>? certificateArn,
    TfArg<String>? customDomainName,
    TfArg<num>? idleTimeoutSeconds,
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
           if (authType != null) 'auth_type': authType,
           if (certificateArn != null) 'certificate_arn': certificateArn,
           if (customDomainName != null) 'custom_domain_name': customDomainName,
           if (idleTimeoutSeconds != null)
             'idle_timeout_seconds': idleTimeoutSeconds,
           'name': name,
           if (region != null) 'region': region,
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

  /// Reference to `dns_entry` attribute.
  TfRef<List<Map<String, Object?>>> get dnsEntry =>
      TfRef.attribute<List<Map<String, Object?>>>(this, 'dns_entry');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
