#!/busybox/busybox sh
#shellcheck shell=dash

set -o errexit
set -o nounset
set -o xtrace

oxigraph load --file "$ONTOLOGY_DIR"/foaf.rdf --format "application/rdf+xml" "$@"
oxigraph load --file "$ONTOLOGY_DIR"/vcard.ttl --format "text/turtle" "$@"
oxigraph load --file "$ONTOLOGY_DIR"/prov-o.ttl --format "text/turtle" "$@"
oxigraph load --file "$ONTOLOGY_DIR"/pattern.owl --format "application/rdf+xml" "$@"
oxigraph load --file "$ONTOLOGY_DIR"/deo.ttl --format "text/turtle" "$@"
oxigraph load --file "$ONTOLOGY_DIR"/doco.ttl --format "text/turtle" "$@"
