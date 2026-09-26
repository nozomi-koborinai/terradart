// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_uxc_account_customizations`.
const Set<String> _awsUxcAccountCustomizationsSensitive = <String>{};

/// Factory wrapper for `aws_uxc_account_customizations`.
final class AwsUxcAccountCustomizations extends Resource {
  static const String tfType = 'aws_uxc_account_customizations';

  AwsUxcAccountCustomizations({
    required super.localName,
    TfArg<String>? accountColor,
    TfArg<List<String>>? visibleRegions,
    TfArg<List<String>>? visibleServices,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (accountColor != null) 'account_color': accountColor,
           if (visibleRegions != null) 'visible_regions': visibleRegions,
           if (visibleServices != null) 'visible_services': visibleServices,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsUxcAccountCustomizationsSensitive;
}
