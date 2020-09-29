#!/bin/bash
FILES=./*
for f in $FILES
do
  echo "Processing $f file..."
  # take action on each file. $f store current file name
  api-spec-converter --from=swagger_1 --to=swagger_2 --syntax=yaml --order=alpha $f > $f.name.yaml
done