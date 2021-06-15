#!/usr/bin/env sh

curl -X PUT "localhost:9200/bank"
curl -X PUT "localhost:9200/shakespeare?pretty" -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "properties": {
    "speaker": {"type": "keyword"},
    "play_name": {"type": "keyword"},
    "line_id": {"type": "integer"},
    "speech_number": {"type": "integer"}
    }
  }
}
'


curl -H 'Content-Type: application/x-ndjson' -X POST 'localhost:9200/bank/_bulk?pretty' --data-binary @accounts.json
curl -H 'Content-Type: application/x-ndjson' -X POST 'localhost:9200/shakespeare/_bulk?pretty' --data-binary @shakespeare_6.0.json
