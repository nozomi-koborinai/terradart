// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_managed_login_branding`.
const Set<String> _awsCognitoManagedLoginBrandingSensitive = <String>{};

/// Typed helper for the `asset` block of
/// `aws_cognito_managed_login_branding` (derived from provider schema).
@immutable
final class CognitoManagedLoginBrandingAsset {
  const CognitoManagedLoginBrandingAsset({
    this.bytes,
    required this.category,
    required this.colorMode,
    required this.extension,
    this.resourceId,
  });

  final TfArg<String>? bytes;

  final TfArg<CognitoManagedLoginBrandingAssetCategory> category;

  final TfArg<CognitoManagedLoginBrandingAssetColorMode> colorMode;

  final TfArg<CognitoManagedLoginBrandingAssetExtension> extension;

  final TfArg<String>? resourceId;

  Map<String, Object?> encode() => {
    if (bytes != null) 'bytes': bytes!.toTfJson(),
    'category': category.toTfJson(),
    'color_mode': colorMode.toTfJson(),
    'extension': extension.toTfJson(),
    if (resourceId != null) 'resource_id': resourceId!.toTfJson(),
  };
}

/// `category` — derived from the provider schema description.
enum CognitoManagedLoginBrandingAssetCategory implements TerraformEnum {
  faviconIco('FAVICON_ICO'),
  faviconSvg('FAVICON_SVG'),
  emailGraphic('EMAIL_GRAPHIC'),
  smsGraphic('SMS_GRAPHIC'),
  authAppGraphic('AUTH_APP_GRAPHIC'),
  passwordGraphic('PASSWORD_GRAPHIC'),
  passkeyGraphic('PASSKEY_GRAPHIC'),
  pageHeaderLogo('PAGE_HEADER_LOGO'),
  pageHeaderBackground('PAGE_HEADER_BACKGROUND'),
  pageFooterLogo('PAGE_FOOTER_LOGO'),
  pageFooterBackground('PAGE_FOOTER_BACKGROUND'),
  pageBackground('PAGE_BACKGROUND'),
  formBackground('FORM_BACKGROUND'),
  formLogo('FORM_LOGO'),
  idpButtonIcon('IDP_BUTTON_ICON');

  const CognitoManagedLoginBrandingAssetCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// `color_mode` — derived from the provider schema description.
enum CognitoManagedLoginBrandingAssetColorMode implements TerraformEnum {
  light('LIGHT'),
  dark('DARK'),
  dynamic('DYNAMIC');

  const CognitoManagedLoginBrandingAssetColorMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `extension` — derived from the provider schema description.
enum CognitoManagedLoginBrandingAssetExtension implements TerraformEnum {
  ico('ICO'),
  jpeg('JPEG'),
  png('PNG'),
  svg('SVG'),
  webp('WEBP');

  const CognitoManagedLoginBrandingAssetExtension(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_cognito_managed_login_branding`.
final class AwsCognitoManagedLoginBranding extends Resource {
  static const String tfType = 'aws_cognito_managed_login_branding';

  AwsCognitoManagedLoginBranding({
    required super.localName,
    required TfArg<String> clientId,
    TfArg<String>? region,
    TfArg<String>? settings,
    TfArg<bool>? useCognitoProvidedValues,
    required TfArg<String> userPoolId,
    List<CognitoManagedLoginBrandingAsset>? asset,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'client_id': clientId,
           if (region != null) 'region': region,
           if (settings != null) 'settings': settings,
           if (useCognitoProvidedValues != null)
             'use_cognito_provided_values': useCognitoProvidedValues,
           'user_pool_id': userPoolId,
           if (asset != null)
             'asset': TfArg.literal([for (final e in asset) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoManagedLoginBrandingSensitive;

  /// Reference to `managed_login_branding_id` attribute.
  TfRef<String> get managedLoginBrandingId =>
      TfRef.attribute<String>(this, 'managed_login_branding_id');

  /// Reference to `settings_all` attribute.
  TfRef<String> get settingsAll =>
      TfRef.attribute<String>(this, 'settings_all');
}
