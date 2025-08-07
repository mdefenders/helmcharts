#!/usr/bin/env bash
helm package it-delivers
helm repo index . --url  https://mdefenders.github.io/helmcharts
git add .
git commit -m "Publish Helm chart"
git push origin gh-pages