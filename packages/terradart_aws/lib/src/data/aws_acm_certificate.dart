// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_acm_certificate`.
const Set<String> _awsAcmCertificateSensitive = <String>{};

/// Factory wrapper for `aws_acm_certificate`.
final class DataAwsAcmCertificate extends Data {
  static const String tfType = 'aws_acm_certificate';

  DataAwsAcmCertificate({
    required super.localName,
    TfArg<String>? domain,
    TfArg<List<String>>? keyTypes,
    TfArg<bool>? mostRecent,
    TfArg<String>? region,
    TfArg<List<String>>? statuses,
    TfArg<Map<String, String>>? tags,
    TfArg<List<String>>? types,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (domain != null) 'domain': domain,
           if (keyTypes != null) 'key_types': keyTypes,
           if (mostRecent != null) 'most_recent': mostRecent,
           if (region != null) 'region': region,
           if (statuses != null) 'statuses': statuses,
           if (tags != null) 'tags': tags,
           if (types != null) 'types': types,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAcmCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate` attribute.
  TfRef<String> get certificate => TfRef.attribute<String>(this, 'certificate');

  /// Reference to `certificate_chain` attribute.
  TfRef<String> get certificateChain =>
      TfRef.attribute<String>(this, 'certificate_chain');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');
}
