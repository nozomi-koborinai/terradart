// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_ses_domain_mail_from`.
const Set<String> _awsSesDomainMailFromSensitive = <String>{};

/// Factory wrapper for `aws_ses_domain_mail_from`.
final class AwsSesDomainMailFrom extends Resource {
  static const String tfType = 'aws_ses_domain_mail_from';

  AwsSesDomainMailFrom({
    required super.localName,
    TfArg<String>? behaviorOnMxFailure,
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
           if (behaviorOnMxFailure != null)
             'behavior_on_mx_failure': behaviorOnMxFailure,
           'domain': domain,
           'mail_from_domain': mailFromDomain,
           if (region != null) 'region': region,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsSesDomainMailFromSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
