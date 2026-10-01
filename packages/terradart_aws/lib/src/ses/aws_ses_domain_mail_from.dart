// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_domain_mail_from`.
const Set<String> _awsSesDomainMailFromSensitive = <String>{};

/// Ses Domain Mail From Behavior On Mx enum for `behavior_on_mx_failure`.
enum SesDomainMailFromBehaviorOnMxFailure implements TerraformEnum {
  usedefaultvalue('UseDefaultValue'),
  rejectmessage('RejectMessage');

  const SesDomainMailFromBehaviorOnMxFailure(this.terraformValue);
  @override
  final String terraformValue;
}

/// Factory wrapper for `aws_ses_domain_mail_from`.
final class AwsSesDomainMailFrom extends Resource {
  static const String tfType = 'aws_ses_domain_mail_from';

  AwsSesDomainMailFrom({
    required super.localName,
    TfArg<SesDomainMailFromBehaviorOnMxFailure>? behaviorOnMxFailure,
    required TfArg<String> domain,
    required TfArg<String> mailFromDomain,
    TfArg<String>? region,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'behavior_on_mx_failure': ?behaviorOnMxFailure,
           'domain': domain,
           'mail_from_domain': mailFromDomain,
           'region': ?region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesDomainMailFromSensitive;

  /// A reference to this resource, for arguments typed
  /// `RefTo<AwsSesDomainMailFrom>`.
  RefTo<AwsSesDomainMailFrom> get ref => RefTo.of(this);

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');

  /// Reference to `behavior_on_mx_failure` attribute.
  TfRef<String> get behaviorOnMxFailure =>
      TfRef.attribute<String>(this, 'behavior_on_mx_failure');

  /// Reference to `domain` attribute.
  TfRef<String> get domain => TfRef.attribute<String>(this, 'domain');

  /// Reference to `mail_from_domain` attribute.
  TfRef<String> get mailFromDomain =>
      TfRef.attribute<String>(this, 'mail_from_domain');

  /// Reference to `region` attribute.
  TfRef<String> get region => TfRef.attribute<String>(this, 'region');
}
