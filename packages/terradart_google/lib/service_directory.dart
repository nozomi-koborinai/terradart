// packages/terradart_google/lib/service_directory.dart
/// Service Directory — managed service registry: namespaces, services,
/// endpoints, and the `*_iam_member` adjuncts for namespace/service access.
library;

export 'src/service_directory/google_service_directory_namespace.dart'
    show GoogleServiceDirectoryNamespace;
export 'src/service_directory/google_service_directory_service.dart'
    show GoogleServiceDirectoryService;
export 'src/service_directory/google_service_directory_endpoint.dart'
    show GoogleServiceDirectoryEndpoint;
export 'src/service_directory/google_service_directory_namespace_iam_member.dart'
    show GoogleServiceDirectoryNamespaceIamMember;
export 'src/service_directory/google_service_directory_service_iam_member.dart'
    show GoogleServiceDirectoryServiceIamMember;
