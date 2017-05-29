json.movie do |movie|
  json.id @movie.id
  json.title @movie.title
  json.image_large @movie.image_large
  json.image_middle @movie.image_middle
  json.image_small @movie.image_thumb
  json.year @movie.start_date.strftime("%Y-%m-%d")
  json.description @movie.description
  json.casts @movie.casts 
  json.directors  @movie.directors
end
