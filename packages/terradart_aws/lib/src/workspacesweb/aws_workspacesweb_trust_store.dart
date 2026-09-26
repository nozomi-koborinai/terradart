// GENERATED FILE - DO NOT EDIT
// Run `terradart wrap` to regenerate.
// ignore_for_file: prefer_relative_imports
import 'package:meta/meta.dart';
import 'package:terradart_core/terradart_core.dart';

/// Sensitive field paths for `aws_workspacesweb_trust_store`.
const Set<String> _awsWorkspaceswebTrustStoreSensitive = <String>{};

/// Typed helper for the `certificate` block of
/// `aws_workspacesweb_trust_store` (derived from provider schema).
@immutable
final class WorkspaceswebTrustStoreCertificate {
  const WorkspaceswebTrustStoreCertificate({required this.body});

  final TfArg<String> body;

  Map<String, Object?> encode() => {'body': body.toTfJson()};
}

/// Factory wrapper for `aws_workspacesweb_trust_store`.
final class AwsWorkspaceswebTrustStore extends Resource {
  static const String tfType = 'aws_workspacesweb_trust_store';

  AwsWorkspaceswebTrustStore({
    required super.localName,
    TfArg<String>? region,
    TfArg<Map<String, String>>? tags,
    List<WorkspaceswebTrustStoreCertificate>? certificate,
    super.lifecycle,
    super.dependsOn,
    super.provider,
    super.timeouts,
  }) : super(
         terraformType: tfType,
         argMap: {
           if (region != null) 'region': region,
           if (tags != null) 'tags': tags,
           if (certificate != null)
             'certificate': TfArg.literal([
               for (final e in certificate) e.encode(),
             ]),
         },
       );

  @override
  Set<String> get sensitiveFields => _awsWorkspaceswebTrustStoreSensitive;

  /// Reference to `associated_portal_arns` attribute.
  TfRef<List<String>> get associatedPortalArns =>
      TfRef.attribute<List<String>>(this, 'associated_portal_arns');

  /// Reference to `tags_all` attribute.
  TfRef<Map<String, String>> get tagsAll =>
      TfRef.attribute<Map<String, String>>(this, 'tags_all');

  /// Reference to `trust_store_arn` attribute.
  TfRef<String> get trustStoreArn =>
      TfRef.attribute<String>(this, 'trust_store_arn');
}
