// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_appstream_user_stack_association`.
const Set<String> _awsAppstreamUserStackAssociationSensitive = <String>{};

/// Factory wrapper for `aws_appstream_user_stack_association`.
final class AwsAppstreamUserStackAssociation extends Resource {
  static const String tfType = 'aws_appstream_user_stack_association';

  AwsAppstreamUserStackAssociation({
    required super.localName,
    required TfArg<String> authenticationType,
    TfArg<String>? region,
    TfArg<bool>? sendEmailNotification,
    required TfArg<String> stackName,
    required TfArg<String> userName,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'authentication_type': authenticationType,
           if (region != null) 'region': region,
           if (sendEmailNotification != null)
             'send_email_notification': sendEmailNotification,
           'stack_name': stackName,
           'user_name': userName,
         },
       );

  @override
  Set<String> get sensitiveFields => _awsAppstreamUserStackAssociationSensitive;

  /// Reference to `id` attribute.
  TfRef<String> get id => TfRef.attribute<String>(this, 'id');
}
