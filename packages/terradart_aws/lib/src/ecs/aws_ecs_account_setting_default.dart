// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ecs_account_setting_default`.
const Set<String> _awsEcsAccountSettingDefaultSensitive = <String>{};

/// Factory wrapper for `aws_ecs_account_setting_default`.
final class AwsEcsAccountSettingDefault extends Resource {
  static const String tfType = 'aws_ecs_account_setting_default';

  AwsEcsAccountSettingDefault(
    super.localName, {
    required TfArg<String> name,
    TfArg<String>? region,
    required TfArg<String> value,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {'name': name, 'region': ?region, 'value': value},
       );

  @override
  Set<String> get sensitiveFields => _awsEcsAccountSettingDefaultSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsEcsAccountSettingDefault>`.
  RefTo<AwsEcsAccountSettingDefault> get ref => RefTo.of(this);

  /// Reference to `name` attribute.
  TfRef<String> get name => TfRef.attribute<String>(this, 'name');

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `principal_arn` attribute.
  TfRef<String> get principalArn =>
      TfRef.attribute<String>(this, 'principal_arn');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');

  /// Reference to `value` attribute.
  TfRef<String> get value => TfRef.attribute<String>(this, 'value');
}
