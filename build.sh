#!/usr/bin/env bash

set -e

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/"
cd "$HERE"

cd dotnet

# Release config triggers also "dotnet format"
dotnet build --configuration release --interactive

dotnet test --configuration release --no-build --no-restore --interactive
