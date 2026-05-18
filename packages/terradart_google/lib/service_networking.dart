// packages/terradart_google/lib/service_networking.dart
/// Service Networking — VPC peering between user networks and Google service
/// VPCs. Required for Cloud SQL private-IP and similar private-services
/// integrations.
///
/// Single-resource barrel today; will accumulate
/// `service_networking_peered_dns_domain` and similar resources in future
/// waves.
library;

export 'src/service_networking/google_service_networking_connection.dart'
    show GoogleServiceNetworkingConnection;
