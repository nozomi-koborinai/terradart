// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_session_logger_association`.
const Set<String> _awsWorkspaceswebSessionLoggerAssociationSensitive =
    <String>{};

/// Factory wrapper for `aws_workspacesweb_session_logger_association`.
final class AwsWorkspaceswebSessionLoggerAssociation extends Resource {
  static const String tfType = 'aws_workspacesweb_session_logger_association';

  AwsWorkspaceswebSessionLoggerAssociation({
    required super.localName,
    required TfArg<String> portalArn,
    TfArg<String>? region,
    required TfArg<String> sessionLoggerArn,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           'portal_arn': portalArn,
           if (region != null) 'region': region,
           'session_logger_arn': sessionLoggerArn,
         },
       );

  @override
  Set<String> get sensitiveFields =>
      _awsWorkspaceswebSessionLoggerAssociationSensitive;
}
