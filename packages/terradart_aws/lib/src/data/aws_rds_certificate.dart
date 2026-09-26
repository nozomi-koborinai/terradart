// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_rds_certificate`.
const Set<String> _awsRdsCertificateSensitive = <String>{};

/// Factory wrapper for `aws_rds_certificate`.
final class DataAwsRdsCertificate extends Data {
  static const String tfType = 'aws_rds_certificate';

  DataAwsRdsCertificate({
    required super.localName,
    TfArg<bool>? defaultForNewLaunches,
    TfArg<bool>? latestValidTill,
    TfArg<String>? region,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (defaultForNewLaunches != null)
             'default_for_new_launches': defaultForNewLaunches,
           if (latestValidTill != null) 'latest_valid_till': latestValidTill,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRdsCertificateSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `certificate_type` attribute.
  TfRef<String> get certificateType =>
      TfRef.attribute<String>(this, 'certificate_type');

  /// Reference to `customer_override` attribute.
  TfRef<bool> get customerOverride =>
      TfRef.attribute<bool>(this, 'customer_override');

  /// Reference to `customer_override_valid_till` attribute.
  TfRef<String> get customerOverrideValidTill =>
      TfRef.attribute<String>(this, 'customer_override_valid_till');

  /// Reference to `thumbprint` attribute.
  TfRef<String> get thumbprint => TfRef.attribute<String>(this, 'thumbprint');

  /// Reference to `valid_from` attribute.
  TfRef<String> get validFrom => TfRef.attribute<String>(this, 'valid_from');

  /// Reference to `valid_till` attribute.
  TfRef<String> get validTill => TfRef.attribute<String>(this, 'valid_till');
}
