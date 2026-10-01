// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_redshift_partner`.
const Set<String> _awsRedshiftPartnerSensitive = <String>{};

/// Factory wrapper for `aws_redshift_partner`.
final class AwsRedshiftPartner extends Resource {
  static const String tfType = 'aws_redshift_partner';

  AwsRedshiftPartner(
    super.localName, {
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
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsRedshiftPartnerSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsRedshiftPartner>`.
  RefTo<AwsRedshiftPartner> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `status` attribute.
  TfRef<String> get status => TfRef.attribute<String>(this, 'status');

  /// Reference to `status_message` attribute.
  TfRef<String> get statusMessage =>
      TfRef.attribute<String>(this, 'status_message');

  /// Reference to `account_id` attribute.
  TfRef<String> get accountId => TfRef.attribute<String>(this, 'account_id');

  /// Reference to `cluster_identifier` attribute.
  TfRef<String> get clusterIdentifier =>
      TfRef.attribute<String>(this, 'cluster_identifier');

  /// Reference to `database_name` attribute.
  TfRef<String> get databaseName =>
      TfRef.attribute<String>(this, 'database_name');

  /// Reference to `partner_name` attribute.
  TfRef<String> get partnerName =>
      TfRef.attribute<String>(this, 'partner_name');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
