json.array! @launchers do |launcher|
  json.extract! launcher, :imported_t, :status, :data
end