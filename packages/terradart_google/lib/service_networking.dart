// packages/terradart_google/lib/service_networking.dart
/// Service Networking — VPC peering between user networks and Google service
/// VPCs, plus Serverless VPC Access connectors for Cloud Run / Functions /
/// App Engine egress into a consumer VPC.
library;

export 'src/service_networking/google_service_networking_connection.dart'
    show GoogleServiceNetworkingConnection;
export 'src/service_networking/google_vpc_access_connector.dart'
    show GoogleVpcAccessConnector, VpcAccessConnectorSubnet;
