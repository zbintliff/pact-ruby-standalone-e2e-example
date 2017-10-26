require 'json'

run -> (env) {
  status = 200
  headers = {'Content-Type' => 'application/json; charset=utf-8'}
  body = {'data' => [{name: "namespaceName", environment: "dev", namespace: "namespace", "region": "region", teamList:["abc"]}, {name: "foo2", environment: "dev", namespace: "namespace", "region": "region", teamList:["abc"]}]}.to_json
  [status, headers, [body]]
}
