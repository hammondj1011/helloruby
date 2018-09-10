json.extract! person, :id, :userid, :firstname, :lastname, :job, :dob, :created_at, :updated_at
json.url person_url(person, format: :json)
