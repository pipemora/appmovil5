json.array!(@surveys) do |survey|
  json.extract! survey, :id, :genero, :edad, :presupuesto, :compania, :factores, :importante, :color, :lineas, :economizar, :dispuesto, :eres
  json.url survey_url(survey, format: :json)
end
