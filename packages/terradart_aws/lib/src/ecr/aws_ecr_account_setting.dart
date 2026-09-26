// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecr_account_setting`.
const Set<String> _awsEcrAccountSettingSensitive = <String>{};

/// Factory wrapper for `aws_ecr_account_setting`.
final class AwsEcrAccountSetting extends Resource {
  static const String tfType = 'aws_ecr_account_setting';

  AwsEcrAccountSetting({
    required super.localName,
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'name': name,
           if (region != null) 'region': region,
           'value': value,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsEcrAccountSettingSensitive;

  /// Reference to `name` attribute.
  TfRef<String> get nameRef => TfRef.attribute<String>(this, 'name');
}
