// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_identity_provider`.
const Set<String> _awsCognitoIdentityProviderSensitive = <String>{};

/// Factory wrapper for `aws_cognito_identity_provider`.
final class AwsCognitoIdentityProvider extends Resource {
  static const String tfType = 'aws_cognito_identity_provider';

  AwsCognitoIdentityProvider({
    required super.localName,
    TfArg<Map<String, String>>? attributeMapping,
    TfArg<List<String>>? idpIdentifiers,
    required TfArg<Map<String, String>> providerDetails,
    required TfArg<String> providerName,
    required TfArg<String> providerType,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (attributeMapping != null) 'attribute_mapping': attributeMapping,
           if (idpIdentifiers != null) 'idp_identifiers': idpIdentifiers,
           'provider_details': providerDetails,
           'provider_name': providerName,
           'provider_type': providerType,
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoIdentityProviderSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
