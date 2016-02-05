json.array!(@tasks) do |task|
  json.extract! task, :id, :taskname, :taskinotherlanguage, :taskdesc, :shortname, :complexitylvl, :taskpriority, :gender, :asset
  json.url task_url(task, format: :json)
end
