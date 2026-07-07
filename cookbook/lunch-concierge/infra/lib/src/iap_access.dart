import 'package:terradart_core/terradart_core.dart';

/// Hand-rolled wrapper for `google_iap_web_cloud_run_service_iam_member`,
/// which the terradart_google catalog has not curated yet. Swap to the
/// typed factory once IAP lands in the catalog.
final class IapWebCloudRunServiceIamMember extends Resource {
  static const String tfType = 'google_iap_web_cloud_run_service_iam_member';

  IapWebCloudRunServiceIamMember({
    required super.localName,
    required TfArg<String> cloudRunServiceName,
    required TfArg<String> role,
    required TfArg<String> member,
    TfArg<String>? location,
    TfArg<String>? project,
    super.lifecycle,
    super.dependsOn,
  }) : super(
          terraformType: tfType,
          argMap: {
            'cloud_run_service_name': cloudRunServiceName,
            'role': role,
            'member': member,
            if (location != null) 'location': location,
            if (project != null) 'project': project,
          },
        );

  @override
  Set<String> get sensitiveFields => const <String>{};
}
