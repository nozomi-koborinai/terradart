/// Network Services Mesh quickstart — a logical service-mesh namespace
/// plus config-only HTTP / gRPC / TCP routes and an endpoint policy.
///
/// Enables `networkservices.googleapis.com` and provisions a global Mesh.
/// Routes attach to that Mesh; they do not attach a Gateway (SWG is
/// $1.25/h) or a BackendService. Creating these objects does not attach
/// clusters or bill Anthos Service Mesh cluster/endpoint SKUs.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/network.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';

/// Network Services stack: Mesh + config-only routes + endpoint policy.
final class NetworkServicesMeshStack extends Stack {
  NetworkServicesMeshStack({required String projectId})
    : super(
        providers: [GoogleProvider(project: projectId, region: 'us-central1')],
      ) {
    final apiNetworkServices = add(
      GoogleProjectService(
        localName: 'api_networkservices',
        service: .literal('networkservices.googleapis.com'),
        disableOnDestroy: .literal(false),
      ),
    );

    final mesh = add(
      GoogleNetworkServicesMesh(
        localName: 'app',
        name: .literal('terradart-mesh'),
        location: .literal('global'),
        description: .literal('TerraDart smoke mesh'),
        dependsOn: [apiNetworkServices],
      ),
    );

    final meshId = TfArg.literal([mesh.id.interpolation]);
    final onMesh = [apiNetworkServices, mesh];

    add(
      GoogleNetworkServicesHttpRoute(
        localName: 'http',
        name: .literal('terradart-http-route'),
        hostnames: .literal(['example']),
        meshes: meshId,
        rules: [
          NetworkServicesHttpRouteRules(
            matches: [
              .new(
                match: .fullPathMatch(.literal('example')),
                queryParameters: [
                  .new(
                    queryParameter: .literal('key'),
                    match: .exactMatch(.literal('value')),
                  ),
                ],
              ),
            ],
          ),
        ],
        dependsOn: onMesh,
      ),
    );

    add(
      GoogleNetworkServicesGrpcRoute(
        localName: 'grpc',
        name: .literal('terradart-grpc-route'),
        hostnames: .literal(['example.com']),
        meshes: meshId,
        rules: [
          NetworkServicesGrpcRouteRules(
            matches: [
              .new(
                method: .new(
                  grpcService: .literal('helloworld.Greeter'),
                  grpcMethod: .literal('SayHello'),
                ),
              ),
            ],
            action: .new(
              retryPolicy: .new(
                numRetries: .literal(1),
                retryConditions: [
                  .literal(
                    NetworkServicesGrpcRouteRetryConditions.connectFailure,
                  ),
                ],
              ),
            ),
          ),
        ],
        dependsOn: onMesh,
      ),
    );

    // original_destination requires a prefix-length-0 match (`*/0` in the
    // API error). Literal `*/0` is not CIDR (`address */0 is invalid`);
    // `0.0.0.0/0` is the documented any-IPv4 form.
    add(
      GoogleNetworkServicesTcpRoute(
        localName: 'tcp',
        name: .literal('terradart-tcp-route'),
        meshes: meshId,
        rules: [
          NetworkServicesTcpRouteRules(
            matches: [
              .new(address: .literal('0.0.0.0/0'), port: .literal('8081')),
            ],
            action: .new(originalDestination: .literal(true)),
          ),
        ],
        dependsOn: onMesh,
      ),
    );

    add(
      GoogleNetworkServicesEndpointPolicy(
        localName: 'ep',
        name: .literal('terradart-ep'),
        type: .literal(.sidecarProxy),
        endpointMatcher: NetworkServicesEndpointPolicyEndpointMatcher(
          metadataLabelMatcher: .new(
            metadataLabelMatchCriteria: .literal(
              NetworkServicesEndpointPolicyMetadataLabelMatchCriteria.matchAny,
            ),
            metadataLabels: [
              .new(
                labelName: .literal('app'),
                labelValue: .literal('terradart'),
              ),
            ],
          ),
        ),
        dependsOn: [apiNetworkServices],
      ),
    );
  }
}
