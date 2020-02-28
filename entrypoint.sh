#!/bin/sh

theme $1 \
  --dir=$2 \
  --password=$SHOPIFY_PASSWORD \
  --store=$SHOPIFY_STORE_URL \
  --themeid=$SHOPIFY_THEME_ID
