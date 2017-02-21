require "./assemble"

run = Assemble.current_run

data = run.input["data"]
jq_expression = run.input["jq_expression"]

File.write("data.json", data.to_json)
puts `./jq '#{jq_expression}' "data.json"`
