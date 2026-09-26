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
           if (faviconFile != null) 'favicon_file': faviconFile,
           if (logoFile != null) 'logo_file': logoFile,
           if (region != null) 'region': region,
           if (title != null) 'title': title,
           'web_app_id': webAppId,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsTransferWebAppCustomizationSensitive;
}
