#!/busybox/busybox sh
#shellcheck shell=dash

set -o errexit
set -o nounset
set -o xtrace

oxigraph load --file "$ONTOLOGY_DIR"/foaf.rdf "$@"
oxigraph load --file "$ONTOLOGY_DIR"/vcard.ttl "$@"
oxigraph load --file "$ONTOLOGY_DIR"/prov-o.ttl "$@"
