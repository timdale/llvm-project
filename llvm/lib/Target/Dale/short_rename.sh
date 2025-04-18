#!/bin/bash

# Rename files starting with 'RISCV' to start with 'Dale'
for file in RISCV*; do
  # Check if the file actually exists to avoid errors if no match
  [ -e "$file" ] || continue

  newname="Dale${file#RISCV}"
  echo "Renaming '$file' to '$newname'"
  # mv -- "$file" "$newname"
done
