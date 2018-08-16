json.extract! therapist, :id, :name, :surname, :email, :cpf, :phone1, :phone2, :created_at, :updated_at
json.url therapist_url(therapist, format: :json)
