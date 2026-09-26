// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_user_pool_ui_customization`.
const Set<String> _awsCognitoUserPoolUiCustomizationSensitive = <String>{};

/// Factory wrapper for `aws_cognito_user_pool_ui_customization`.
final class AwsCognitoUserPoolUiCustomization extends Resource {
  static const String tfType = 'aws_cognito_user_pool_ui_customization';

  AwsCognitoUserPoolUiCustomization({
    required super.localName,
    TfArg<String>? clientId,
    TfArg<String>? css,
    TfArg<String>? imageFile,
    TfArg<String>? region,
    required TfArg<String> userPoolId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (clientId != null) 'client_id': clientId,
           if (css != null) 'css': css,
           if (imageFile != null) 'image_file': imageFile,
           if (region != null) 'region': region,
           'user_pool_id': userPoolId,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsCognitoUserPoolUiCustomizationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `creation_date` attribute.
  TfRef<String> get creationDate =>
      TfRef.attribute<String>(this, 'creation_date');

  /// Reference to `css_version` attribute.
  TfRef<String> get cssVersion => TfRef.attribute<String>(this, 'css_version');

  /// Reference to `image_url` attribute.
  TfRef<String> get imageUrl => TfRef.attribute<String>(this, 'image_url');

  /// Reference to `last_modified_date` attribute.
  TfRef<String> get lastModifiedDate =>
      TfRef.attribute<String>(this, 'last_modified_date');
}
