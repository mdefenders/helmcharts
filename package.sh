#!/usr/bin/env bash
helm package argo-appsets
helm repo index . --url  https://mdefenders.github.io/helmcharts
git add .
git commit -m "Publish Helm chart"
git push origin gh-pages