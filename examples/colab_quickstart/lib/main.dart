/// Colab Enterprise quickstart — runtime template, IAM, paused schedule.
///
/// Defines a `ColabStack` that enables Vertex AI + Storage, provisions a
/// reusable runtime template, grants an in-stack service account viewer on
/// the template, and registers a **paused** notebook schedule (local
/// `hello_world.ipynb` uploaded to GCS). Pausing avoids Vertex Colab VM
/// charges on apply.
///
/// Run `bin/infra.dart` to synth into `tf-out/`.
library;

import 'package:terradart_core/terradart_core.dart';
import 'package:terradart_google/colab.dart';
import 'package:terradart_google/compute.dart';
import 'package:terradart_google/iam.dart';
import 'package:terradart_google/project.dart';
import 'package:terradart_google/provider.dart';
import 'package:terradart_google/storage.dart';

/// Colab Enterprise stack: template + IAM + paused schedule.
final class ColabStack extends Stack {
  ColabStack({required String projectId})
      : super(
          providers: [
            GoogleProvider(project: projectId, region: 'us-central1'),
          ],
        ) {
    const location = 'us-central1';
    final bucketName = '$projectId-terradart-colab';

    final apiAi = add(
      GoogleProjectService(
        localName: 'api_aiplatform',
        service: TfArg.literal('aiplatform.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiCompute = add(
      GoogleProjectService(
        localName: 'api_compute',
        service: TfArg.literal('compute.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    final apiStorage = add(
      GoogleProjectService(
        localName: 'api_storage',
        service: TfArg.literal('storage.googleapis.com'),
        disableOnDestroy: TfArg.literal(false),
      ),
    );

    // terradart-validate has no default VPC; Colab templates require an
    // explicit network + subnet (default network returns 404).
    final network = add(
      GoogleComputeNetwork(
        localName: 'colab_vpc',
        name: TfArg.literal('terradart-colab-vpc'),
        autoCreateSubnetworks: TfArg.literal(false),
        dependsOn: [ResourceDependency(apiCompute)],
      ),
    );

    final subnet = add(
      GoogleComputeSubnetwork(
        localName: 'colab_subnet',
        name: TfArg.literal('terradart-colab-subnet'),
        region: TfArg.literal(location),
        network: TfArg.ref(network.id),
        ipCidrRange: TfArg.literal('10.40.0.0/24'),
        privateIpGoogleAccess: TfArg.literal(true),
        dependsOn: [ResourceDependency(network)],
      ),
    );

    final runner = add(
      GoogleServiceAccount(
        localName: 'colab_runner',
        accountId: TfArg.literal('terradart-colab-runner'),
        displayName: TfArg.literal('Colab schedule runner'),
      ),
    );

    // Vertex keeps notebookRuntimeTemplate IDs briefly after destroy
    // (409 "already exists" on rapid apply-smoke re-runs). Use a short
    // stable id that is unlikely to collide with a soft-deleted prior name.
    final template = add(
      GoogleColabRuntimeTemplate(
        localName: 'basic',
        name: TfArg.literal('terradart-colab-rt'),
        displayName: TfArg.literal('TerraDart Colab runtime template'),
        location: TfArg.literal(location),
        machineSpec: TfArg.literal(<String, Object?>{
          'machine_type': 'e2-standard-4',
        }),
        networkSpec: TfArg.literal(<String, Object?>{
          'enable_internet_access': true,
          'network': network.id.interpolation,
          'subnetwork': subnet.id.interpolation,
        }),
        dependsOn: [
          ResourceDependency(apiAi),
          ResourceDependency(subnet),
        ],
      ),
    );

    add(
      GoogleColabRuntimeTemplateIamMember(
        localName: 'runner_viewer',
        runtimeTemplate: TfArg.ref(template.nameRef),
        role: TfArg.literal('roles/viewer'),
        member: TfArg.ref(runner.iamMember),
        location: TfArg.literal(location),
        dependsOn: [
          ResourceDependency(template),
          ResourceDependency(runner),
        ],
      ),
    );

    final bucket = add(
      GoogleStorageBucket(
        localName: 'colab_io',
        name: TfArg.literal(bucketName),
        location: TfArg.literal('US-CENTRAL1'),
        forceDestroy: TfArg.literal(true),
        uniformBucketLevelAccess: TfArg.literal(true),
        dependsOn: [ResourceDependency(apiStorage)],
      ),
    );

    final notebook = add(
      GoogleStorageBucketObject(
        localName: 'hello_ipynb',
        bucket: TfArg.ref(bucket.nameRef),
        name: TfArg.literal('hello_world.ipynb'),
        body: StorageBucketObjectBucketObjectFromSource(
          source: TfArg.literal('../hello_world.ipynb'),
        ),
        contentType: TfArg.literal('application/json'),
        dependsOn: [ResourceDependency(bucket)],
      ),
    );

    final templateResourceName =
        'projects/$projectId/locations/$location/notebookRuntimeTemplates/'
        '${template.nameRef.interpolation}';

    add(
      GoogleColabSchedule(
        localName: 'paused_hello',
        displayName: TfArg.literal('terradart-paused-hello'),
        location: TfArg.literal(location),
        cron: TfArg.literal('0 0 1 1 *'),
        maxConcurrentRunCount: TfArg.literal('1'),
        desiredState: TfArg.literal(ColabScheduleDesiredState.paused),
        createNotebookExecutionJobRequest: TfArg.literal(<String, Object?>{
          'notebook_execution_job': {
            'display_name': 'TerraDart hello notebook',
            'gcs_notebook_source': {
              'uri':
                  'gs://${bucket.nameRef.interpolation}/${notebook.nameRef.interpolation}',
              'generation': notebook.generation.interpolation,
            },
            'notebook_runtime_template_resource_name': templateResourceName,
            'gcs_output_uri': 'gs://${bucket.nameRef.interpolation}/out',
            'service_account': runner.email.interpolation,
          },
        }),
        dependsOn: [
          ResourceDependency(template),
          ResourceDependency(notebook),
          ResourceDependency(runner),
        ],
      ),
    );
  }
}
