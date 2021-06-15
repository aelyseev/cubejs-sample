## Cubejs + Elasticsearch

### How to start

```shell
npm install
```

Use `.env` to connect to some elasticsearch server

Or fill with sample data
```shell
docker-compose -p cubejs-sample -f docker-compose.dev.yaml up -d
chmod +x init.sh
./init.sh
```

Run CubeJS backend
```shell
npm run dev
```
