// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_outbound_web_identity_federation`.
const Set<String> _awsIamOutboundWebIdentityFederationSensitive = <String>{};

/// Factory wrapper for `aws_iam_outbound_web_identity_federation`.
final class DataAwsIamOutboundWebIdentityFederation extends Data {
  static const String tfType = 'aws_iam_outbound_web_identity_federation';

  DataAwsIamOutboundWebIdentityFederation({
    required super.localName,
    super.provider,
    super.timeouts,
  }) : super(terraformType: tfType, argMap: {});

  @override
  Set<String> get sensitiveFields =>
      _awsIamOutboundWebIdentityFederationSensitive;

  /// Reference to `issuer_identifier` attribute.
  TfRef<String> get issuerIdentifier =>
      TfRef.attribute<String>(this, 'issuer_identifier');
}
