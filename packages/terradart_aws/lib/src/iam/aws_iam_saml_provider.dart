// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_iam_saml_provider`.
const Set<String> _awsIamSamlProviderSensitive = <String>{};

/// Factory wrapper for `aws_iam_saml_provider`.
final class AwsIamSamlProvider extends Resource {
  static const String tfType = 'aws_iam_saml_provider';

  AwsIamSamlProvider({
    required super.localName,
    required TfArg<String> name,
    required TfArg<String> samlMetadataDocument,
    TfArg<Map<String, String>>? tags,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           'saml_metadata_document': samlMetadataDocument,
           if (tags != null) 'tags': tags,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsIamSamlProviderSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `arn` attribute.
  TfRef<String> get arn => TfRef.attribute<String>(this, 'arn');

  /// Reference to `saml_provider_uuid` attribute.
  TfRef<String> get samlProviderUuid =>
      TfRef.attribute<String>(this, 'saml_provider_uuid');

  /// Reference to `valid_until` attribute.
  TfRef<String> get validUntil => TfRef.attribute<String>(this, 'valid_until');
}
