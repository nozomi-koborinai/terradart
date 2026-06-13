# Cloud Run v2 quickstart

End-to-end terradart example for a Cloud Run v2 Service with a secret-backed environment variable, Serverless VPC Access, and Memorystore Redis. Provisions a Secret Manager secret, API enablement with propagation sleep, a VPC Access connector on the default VPC, a Redis cache instance, then a Cloud Run service that consumes the secret via the sealed `EnvVarFromSecret` variant of `EnvVarSource` and routes private-range egress through the connector.

## Prerequisites

- Dart SDK >= 3.6
- Terraform CLI >= 1.11.0
- A GCP project with credentials configured (`gcloud auth application-default login`). The stack enables the Run, Secret Manager, VPC Access, and Redis APIs via `Apis.enable`.

## Layout

```
examples/cloud_run_quickstart/
├── lib/main.dart        # ApiServiceStack: secret + APIs + VPC connector + Redis + Cloud Run service
├── bin/infra.dart       # Synth entry
├── tf-out/              # (created on synth) main.tf.json
└── pubspec.yaml
```

## Usage

```bash
dart pub get
GCP_PROJECT_ID=your-project-id dart run bin/infra.dart
cd tf-out
terraform init
terraform plan
terraform apply
```

## What gets created

- API enablement via [`Apis.enable`](../../packages/terradart_google/lib/src/project/apis.dart) (`Barrels.cloudRun`, `Barrels.secretManager`, `Barrels.serviceNetworking`, `Barrels.redis`) with a 60s `TimeSleep` propagation wait (`TimeProvider` on the stack).
- A Secret Manager secret `api-db-password` with user-managed replication in `asia-northeast1`.
- A Serverless VPC Access connector `run-vpc` (`10.8.0.0/28` on the `default` VPC).
- A Memorystore Redis instance `api-cache` (1 GiB, basic tier on the `default` VPC).
- A Cloud Run v2 Service `api` running `gcr.io/cloudrun/hello`:
  - 1 literal env var: `LOG_LEVEL=info` via `EnvVarFromLiteral`.
  - 1 secret-backed env var: `DB_PASSWORD` via `EnvVarFromSecret(secret: 'api-db-password', version: 'latest')`.
  - 1 referenced env var: `REDIS_HOST` from the cache's typed `host` ref (`${google_redis_instance.api_cache.host}`).
  - 1 HTTP port (8080), `ContainerResources(limits: {'cpu': '1', 'memory': '512Mi'}, ...)`.
  - `ServiceScaling(minInstanceCount: 0, maxInstanceCount: 4, scalingMode: ScalingMode.automatic)`.
  - `Ingress.internalLoadBalancer` restricting traffic to internal + load balancer sources.
  - `template.vpcAccess` pinning the revision to the connector with `VpcAccessEgress.privateRangesOnly`.

## Expected `tf-out/main.tf.json` (excerpt)

```json
{
  "resource": {
    "google_cloud_run_v2_service": {
      "api": {
        "name": "api",
        "location": "asia-northeast1",
        "ingress": "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER",
        "template": [
          {
            "containers": [
              {
                "image": "gcr.io/cloudrun/hello",
                "env": [
                  { "name": "LOG_LEVEL", "value": "info" },
                  {
                    "name": "DB_PASSWORD",
                    "value_source": [
                      { "secret_key_ref": [{ "secret": "api-db-password", "version": "latest" }] }
                    ]
                  }
                ],
                "ports": [{ "container_port": 8080 }],
                "resources": [{ "limits": { "cpu": "1", "memory": "512Mi" }, "cpu_idle": true, "startup_cpu_boost": true }]
              }
            ]
          }
        ],
        "scaling": [{ "min_instance_count": 0, "max_instance_count": 4, "scaling_mode": "AUTOMATIC" }]
      }
    }
  }
}
```

The sealed `EnvVarSource` keeps the `env.value` vs. `env.value_source.secret_key_ref` mutual exclusion honest at the type level — each `EnvVar.source` is exactly one of `EnvVarFromLiteral` or `EnvVarFromSecret`.

## Next steps

- [monitoring_quickstart](../monitoring_quickstart/) — alert on this Cloud Run service's p95 request latency.
