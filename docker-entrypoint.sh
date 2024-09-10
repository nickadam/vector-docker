#!/bin/bash

echo "$VECTOR_CONFIG_CONTENT" > /etc/vector/vector.yaml

$@
