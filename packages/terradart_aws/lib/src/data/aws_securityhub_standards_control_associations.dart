// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_securityhub_standards_control_associations`.
const Set<String> _awsSecurityhubStandardsControlAssociationsSensitive =
    <String>{};

/// Factory wrapper for `aws_securityhub_standards_control_associations`.
final class DataAwsSecurityhubStandardsControlAssociations extends Data {
  static const String tfType = 'aws_securityhub_standards_control_associations';

  DataAwsSecurityhubStandardsControlAssociations({
    required super.localName,
    TfArg<String>? region,
    required TfArg<String> securityControlId,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           'security_control_id': securityControlId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsSecurityhubStandardsControlAssociationsSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `standards_control_associations` attribute.
  TfRef<List<Map<String, Object?>>> get standardsControlAssociations =>
      TfRef.attribute<List<Map<String, Object?>>>(
        this,
        'standards_control_associations',
      );
}
