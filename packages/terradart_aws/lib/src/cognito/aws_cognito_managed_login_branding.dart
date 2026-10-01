// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_cognito_managed_login_branding`.
const Set<String> _awsCognitoManagedLoginBrandingSensitive = <String>{};

/// Exactly one of `settings`, `use_cognito_provided_values` on `aws_cognito_managed_login_branding`: the provider rejects
/// none and more than one, so each variant sets one of them.
///
/// Pick one with a dot shorthand: `.settings(...)`.
sealed class CognitoManagedLoginBrandingStyle {
  const CognitoManagedLoginBrandingStyle();

  /// Sets `settings`.
  const factory CognitoManagedLoginBrandingStyle.settings(
    TfArg<String> settings,
  ) = CognitoManagedLoginBrandingStyleSettings;

  /// Sets `use_cognito_provided_values`.
  const factory CognitoManagedLoginBrandingStyle.useCognitoProvidedValues(
    TfArg<bool> useCognitoProvidedValues,
  ) = CognitoManagedLoginBrandingStyleUseCognitoProvidedValues;

  /// The Terraform argument this choice sets.
  String get blockKey;

  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CognitoManagedLoginBrandingStyle.settings] choice: sets `settings`.
final class CognitoManagedLoginBrandingStyleSettings
    extends CognitoManagedLoginBrandingStyle {
  const CognitoManagedLoginBrandingStyleSettings(this.settings);

  final TfArg<String> settings;

  @override
  String get blockKey => 'settings';

  @override
  Map<String, Object?> encode() => {'settings': settings.toTfJson()};

  @override
  Map<String, TfArg<Object?>> get argMap => {'settings': settings};
}

/// The [CognitoManagedLoginBrandingStyle.useCognitoProvidedValues] choice: sets `use_cognito_provided_values`.
final class CognitoManagedLoginBrandingStyleUseCognitoProvidedValues
    extends CognitoManagedLoginBrandingStyle {
  const CognitoManagedLoginBrandingStyleUseCognitoProvidedValues(
    this.useCognitoProvidedValues,
  );

  final TfArg<bool> useCognitoProvidedValues;

  @override
  String get blockKey => 'use_cognito_provided_values';

  @override
  Map<String, Object?> encode() => {
    'use_cognito_provided_values': useCognitoProvidedValues.toTfJson(),
  };

  @override
  Map<String, TfArg<Object?>> get argMap => {
    'use_cognito_provided_values': useCognitoProvidedValues,
  };
}

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

  final TfArg<CognitoManagedLoginBrandingCategory> category;

  final TfArg<CognitoManagedLoginBrandingColorMode> colorMode;

  final TfArg<CognitoManagedLoginBrandingExtension> extension;

  final TfArg<String>? resourceId;

  Map<String, Object?> encode() => {
    'bytes': ?bytes?.toTfJson(),
    'category': category.toTfJson(),
    'color_mode': colorMode.toTfJson(),
    'extension': extension.toTfJson(),
    'resource_id': ?resourceId?.toTfJson(),
  };
}

/// `category` — derived from the provider schema description.
enum CognitoManagedLoginBrandingCategory implements TerraformEnum {
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

  const CognitoManagedLoginBrandingCategory(this.terraformValue);
  @override
  final String terraformValue;
}

/// `color_mode` — derived from the provider schema description.
enum CognitoManagedLoginBrandingColorMode implements TerraformEnum {
  light('LIGHT'),
  dark('DARK'),
  dynamic('DYNAMIC');

  const CognitoManagedLoginBrandingColorMode(this.terraformValue);
  @override
  final String terraformValue;
}

/// `extension` — derived from the provider schema description.
enum CognitoManagedLoginBrandingExtension implements TerraformEnum {
  ico('ICO'),
  jpeg('JPEG'),
  png('PNG'),
  svg('SVG'),
  webp('WEBP');

  const CognitoManagedLoginBrandingExtension(this.terraformValue);
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
    required CognitoManagedLoginBrandingStyle style,
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
           'region': ?region,
           ...style.argMap,
           'user_pool_id': userPoolId,
           if (asset != null)
             'asset': TfArg.literal([for (final e in asset) e.encode()]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsCognitoManagedLoginBrandingSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsCognitoManagedLoginBranding>`.
  RefTo<AwsCognitoManagedLoginBranding> get ref => RefTo.of(this);

  /// Reference to `managed_login_branding_id` attribute.
  TfRef<String> get managedLoginBrandingId =>
      TfRef.attribute<String>(this, 'managed_login_branding_id');

  /// Reference to `settings_all` attribute.
  TfRef<String> get settingsAll =>
      TfRef.attribute<String>(this, 'settings_all');

  /// Reference to `client_id` attribute.
  TfRef<String> get clientIdRef => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `region` attribute.
  TfRef<String> get regionRef => TfRef.attribute<String>(this, 'region');

  /// Reference to `settings` attribute.
  TfRef<String> get settingsRef => TfRef.attribute<String>(this, 'settings');

  /// Reference to `use_cognito_provided_values` attribute.
  TfRef<bool> get useCognitoProvidedValuesRef =>
      TfRef.attribute<bool>(this, 'use_cognito_provided_values');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolIdRef =>
      TfRef.attribute<String>(this, 'user_pool_id');
}
