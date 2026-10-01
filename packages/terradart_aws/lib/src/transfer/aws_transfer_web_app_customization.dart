// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_transfer_web_app_customization`.
const Set<String> _awsTransferWebAppCustomizationSensitive = <String>{};

/// Factory wrapper for `aws_transfer_web_app_customization`.
final class AwsTransferWebAppCustomization extends Resource {
  static const String tfType = 'aws_transfer_web_app_customization';

  AwsTransferWebAppCustomization({
    required super.localName,
    TfArg<String>? faviconFile,
    TfArg<String>? logoFile,
    TfArg<String>? region,
    TfArg<String>? title,
    required TfArg<String> webAppId,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'favicon_file': ?faviconFile,
           'logo_file': ?logoFile,
           'region': ?region,
           'title': ?title,
           'web_app_id': webAppId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferWebAppCustomizationSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsTransferWebAppCustomization>`.
  RefTo<AwsTransferWebAppCustomization> get ref => RefTo.of(this);

  /// Reference to `favicon_file` attribute.
  TfRef<String> get faviconFile =>
      TfRef.attribute<String>(this, 'favicon_file');

  /// Reference to `logo_file` attribute.
  TfRef<String> get logoFile => TfRef.attribute<String>(this, 'logo_file');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `title` attribute.
  TfRef<String> get title => TfRef.attribute<String>(this, 'title');

  /// Reference to `web_app_id` attribute.
  TfRef<String> get webAppId => TfRef.attribute<String>(this, 'web_app_id');
}
