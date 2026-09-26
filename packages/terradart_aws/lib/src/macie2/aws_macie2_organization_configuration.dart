// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_macie2_organization_configuration`.
const Set<String> _awsMacie2OrganizationConfigurationSensitive = <String>{};

/// Factory wrapper for `aws_macie2_organization_configuration`.
final class AwsMacie2OrganizationConfiguration extends Resource {
  static const String tfType = 'aws_macie2_organization_configuration';

  AwsMacie2OrganizationConfiguration({
    required super.localName,
    required TfArg<bool> autoEnable,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'auto_enable': autoEnable,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsMacie2OrganizationConfigurationSensitive;
}
