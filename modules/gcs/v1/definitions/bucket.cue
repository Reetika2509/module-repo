"atmos-gcs-v1": {
    type: "component"
    attributes: {
        workload: definition: {
            apiVersion: "storage.example.com/v1alpha1"
            kind:       "GCSBucket"
        }
    }
}

template: {
    output: {
        apiVersion: "storage.example.com/v1alpha1"
        kind:       "GCSBucket"
        metadata: {
            name:      context.name
            namespace: context.namespace
        }
        spec: {
            projectId: parameter.projectId
            bucket:    parameter.name
        }
    }
    parameter: {
        // +usage=GCP project ID
        projectId: string & !=""
        // +usage=Bucket name
        name: string & !=""
    }
}
