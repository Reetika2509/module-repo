// API line v2 for the s3 module.
//
// apiVersion is the stability contract a consumer binds to (type: s3/v2/bucket).
// enabled   gates whether this API line installs (default true when absent).
// This line ships one Composition (auxiliary/composition.yaml) and one
// ComponentDefinition (definitions/bucket.cue), both backed by the module-wide
// XRD at ../auxiliary/xrd.yaml. It coexists alongside the v1 line: both render
// distinct definitions (s3-v1-bucket, s3-v2-bucket) with no name collision.
apiVersion: "v2"
enabled:    true
