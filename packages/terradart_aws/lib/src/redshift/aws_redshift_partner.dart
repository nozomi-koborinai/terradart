// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_partner`.
const Set<String> _awsRedshiftPartnerSensitive = <String>{};

/// Factory wrapper for `aws_redshift_partner`.
final class AwsRedshiftPartner extends Resource {
  static const String tfType = 'aws_redshift_partner';

  AwsRedshiftPartner({
    required super.localName,
    required TfArg<String> accountId,
    required TfArg<String> clusterIdentifier,
    required TfArg<String> databaseName,
    required TfArg<String> partnerName,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'account_id': accountId,
           'cluster_identifier': clusterIdentifier,
           'database_name': databaseName,
           'partner_name': partnerName,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftPartnerSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');
}
