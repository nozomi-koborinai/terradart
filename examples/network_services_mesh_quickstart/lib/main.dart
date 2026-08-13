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
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    final apiNetworkServices = add(
      GoogleProjectService(
        localName: 'api_networkservices',
        service: TfArg.literal('networkservices.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final mesh = add(
      GoogleNetworkServicesMesh(
        localName: 'app',
        name: TfArg.literal('terradart-mesh'),
        location: TfArg.literal('global'),
        description: TfArg.literal('TerraDart smoke mesh'),
        dependsOn: [ResourceDependency(apiNetworkServices)],
      ),
    );

    final meshId = TfArg.literal([mesh.id.interpolation]);
    final onMesh = [
      ResourceDependency(apiNetworkServices),
      ResourceDependency(mesh),
    ];

    add(
      GoogleNetworkServicesHttpRoute(
        localName: 'http',
        name: TfArg.literal('terradart-http-route'),
        hostnames: TfArg.literal(['example.com']),
        meshes: meshId,
        rules: [
          NetworkServicesHttpRouteRules(
            matches: [
              NetworkServicesHttpRouteRulesMatches(
                prefixMatch: TfArg.literal('/'),
              ),
            ],
            action: NetworkServicesHttpRouteRulesAction(
              redirect: NetworkServicesHttpRouteRulesActionRedirect(
                hostRedirect: TfArg.literal('example.com'),
                httpsRedirect: TfArg.literal(true),
              ),
            ),
          ),
        ],
        dependsOn: onMesh,
      ),
    );

    add(
      GoogleNetworkServicesGrpcRoute(
        localName: 'grpc',
        name: TfArg.literal('terradart-grpc-route'),
        hostnames: TfArg.literal(['example.com']),
        meshes: meshId,
        rules: [
          NetworkServicesGrpcRouteRules(
            matches: [
              NetworkServicesGrpcRouteRulesMatches(
                method: NetworkServicesGrpcRouteRulesMatchesMethod(
                  grpcService: TfArg.literal('helloworld.Greeter'),
                  grpcMethod: TfArg.literal('SayHello'),
                ),
              ),
            ],
            action: NetworkServicesGrpcRouteRulesAction(
              retryPolicy: NetworkServicesGrpcRouteRulesActionRetryPolicy(
                numRetries: TfArg.literal(1),
                retryConditions: [
                  TfArg.literal(
                    NetworkServicesGrpcRouteRulesActionRetryPolicyRetryConditions
                        .connectFailure,
                  ),
                ],
              ),
            ),
          ),
        ],
        dependsOn: onMesh,
      ),
    );

    add(
      GoogleNetworkServicesTcpRoute(
        localName: 'tcp',
        name: TfArg.literal('terradart-tcp-route'),
        meshes: meshId,
        rules: [
          NetworkServicesTcpRouteRules(
            matches: [
              NetworkServicesTcpRouteRulesMatches(
                address: TfArg.literal('10.0.0.1/32'),
                port: TfArg.literal('8081'),
              ),
            ],
            action: NetworkServicesTcpRouteRulesAction(
              originalDestination: TfArg.literal(true),
            ),
          ),
        ],
        dependsOn: onMesh,
      ),
    );

    add(
      GoogleNetworkServicesEndpointPolicy(
        localName: 'ep',
        name: TfArg.literal('terradart-ep'),
        type: TfArg.literal(NetworkServicesEndpointPolicyType.sidecarProxy),
        endpointMatcher: NetworkServicesEndpointPolicyEndpointMatcher(
          metadataLabelMatcher:
              NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcher(
            metadataLabelMatchCriteria: TfArg.literal(
              NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabelMatchCriteria
                  .matchAny,
            ),
            metadataLabels: [
              NetworkServicesEndpointPolicyEndpointMatcherMetadataLabelMatcherMetadataLabels(
                labelName: TfArg.literal('app'),
                labelValue: TfArg.literal('terradart'),
              ),
            ],
          ),
        ),
        dependsOn: [ResourceDependency(apiNetworkServices)],
      ),
    );
  }
}
