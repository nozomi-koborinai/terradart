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
  @internal
  String get blockKey;

  @internal
  Map<String, Object?> encode();

  /// The resource arguments behind [encode], as the caller's
  /// [TfArg]s.
  @internal
  Map<String, TfArg<Object?>> get argMap;
}

/// The [CognitoManagedLoginBrandingStyle.settings] choice: sets `settings`.
final class CognitoManagedLoginBrandingStyleSettings
    extends CognitoManagedLoginBrandingStyle {
  const CognitoManagedLoginBrandingStyleSettings(this.settings);

  final TfArg<String> settings;

  @internal
  @override
  String get blockKey => 'settings';

  @internal
  @override
  Map<String, Object?> encode() => {'settings': settings.toTfJson()};

  @internal
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

  @internal
  @override
  String get blockKey => 'use_cognito_provided_values';

  @internal
  @override
  Map<String, Object?> encode() => {
    'use_cognito_provided_values': useCognitoProvidedValues.toTfJson(),
  };

  @internal
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

  final CognitoManagedLoginBrandingCategory category;

  final CognitoManagedLoginBrandingColorMode colorMode;

  final CognitoManagedLoginBrandingExtension extension;

  final TfArg<String>? resourceId;

  @internal
  Map<String, Object?> encode() => {
    'bytes': ?bytes?.toTfJson(),
    'category': category.toTfJson(),
    'color_mode': colorMode.toTfJson(),
    'extension': extension.toTfJson(),
    'resource_id': ?resourceId?.toTfJson(),
  };
}

/// `category` — derived from the provider schema description.
extension type const CognitoManagedLoginBrandingCategory._(TfArg<String> _)
    implements TfArg<String> {
  CognitoManagedLoginBrandingCategory.variable(String name)
    : this._(TfArg.variable(name));
  CognitoManagedLoginBrandingCategory.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoManagedLoginBrandingCategory.arg(TfArg<String> arg)
    : this._(arg);

  static const faviconIco = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('FAVICON_ICO'),
  );
  static const faviconSvg = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('FAVICON_SVG'),
  );
  static const emailGraphic = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('EMAIL_GRAPHIC'),
  );
  static const smsGraphic = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('SMS_GRAPHIC'),
  );
  static const authAppGraphic = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('AUTH_APP_GRAPHIC'),
  );
  static const passwordGraphic = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('PASSWORD_GRAPHIC'),
  );
  static const passkeyGraphic = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('PASSKEY_GRAPHIC'),
  );
  static const pageHeaderLogo = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('PAGE_HEADER_LOGO'),
  );
  static const pageHeaderBackground = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('PAGE_HEADER_BACKGROUND'),
  );
  static const pageFooterLogo = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('PAGE_FOOTER_LOGO'),
  );
  static const pageFooterBackground = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('PAGE_FOOTER_BACKGROUND'),
  );
  static const pageBackground = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('PAGE_BACKGROUND'),
  );
  static const formBackground = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('FORM_BACKGROUND'),
  );
  static const formLogo = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('FORM_LOGO'),
  );
  static const idpButtonIcon = CognitoManagedLoginBrandingCategory._(
    TfArgLiteral('IDP_BUTTON_ICON'),
  );

  static const List<CognitoManagedLoginBrandingCategory> values = [
    faviconIco,
    faviconSvg,
    emailGraphic,
    smsGraphic,
    authAppGraphic,
    passwordGraphic,
    passkeyGraphic,
    pageHeaderLogo,
    pageHeaderBackground,
    pageFooterLogo,
    pageFooterBackground,
    pageBackground,
    formBackground,
    formLogo,
    idpButtonIcon,
  ];
}

/// `color_mode` — derived from the provider schema description.
extension type const CognitoManagedLoginBrandingColorMode._(TfArg<String> _)
    implements TfArg<String> {
  CognitoManagedLoginBrandingColorMode.variable(String name)
    : this._(TfArg.variable(name));
  CognitoManagedLoginBrandingColorMode.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoManagedLoginBrandingColorMode.arg(TfArg<String> arg)
    : this._(arg);

  static const light = CognitoManagedLoginBrandingColorMode._(
    TfArgLiteral('LIGHT'),
  );
  static const dark = CognitoManagedLoginBrandingColorMode._(
    TfArgLiteral('DARK'),
  );
  static const dynamic = CognitoManagedLoginBrandingColorMode._(
    TfArgLiteral('DYNAMIC'),
  );

  static const List<CognitoManagedLoginBrandingColorMode> values = [
    light,
    dark,
    dynamic,
  ];
}

/// `extension` — derived from the provider schema description.
extension type const CognitoManagedLoginBrandingExtension._(TfArg<String> _)
    implements TfArg<String> {
  CognitoManagedLoginBrandingExtension.variable(String name)
    : this._(TfArg.variable(name));
  CognitoManagedLoginBrandingExtension.expression(String template)
    : this._(TfArg.expression(template));
  const CognitoManagedLoginBrandingExtension.arg(TfArg<String> arg)
    : this._(arg);

  static const ico = CognitoManagedLoginBrandingExtension._(
    TfArgLiteral('ICO'),
  );
  static const jpeg = CognitoManagedLoginBrandingExtension._(
    TfArgLiteral('JPEG'),
  );
  static const png = CognitoManagedLoginBrandingExtension._(
    TfArgLiteral('PNG'),
  );
  static const svg = CognitoManagedLoginBrandingExtension._(
    TfArgLiteral('SVG'),
  );
  static const webp = CognitoManagedLoginBrandingExtension._(
    TfArgLiteral('WEBP'),
  );

  static const List<CognitoManagedLoginBrandingExtension> values = [
    ico,
    jpeg,
    png,
    svg,
    webp,
  ];
}

/// Factory wrapper for `aws_cognito_managed_login_branding`.
final class AwsCognitoManagedLoginBranding extends Resource {
  static const String tfType = 'aws_cognito_managed_login_branding';

  AwsCognitoManagedLoginBranding(
    super.localName, {
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
  TfRef<String> get clientId => TfRef.attribute<String>(this, 'client_id');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `settings` attribute.
  TfRef<String> get settings => TfRef.attribute<String>(this, 'settings');

  /// Reference to `use_cognito_provided_values` attribute.
  TfRef<bool> get useCognitoProvidedValues =>
      TfRef.attribute<bool>(this, 'use_cognito_provided_values');

  /// Reference to `user_pool_id` attribute.
  TfRef<String> get userPoolId => TfRef.attribute<String>(this, 'user_pool_id');
}
