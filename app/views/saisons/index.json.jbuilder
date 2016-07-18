json.array!(@saisons) do |saison|
  json.extract! saison, :id, :annee, :ligue, :sport
  json.url saison_url(saison, format: :json)
end
