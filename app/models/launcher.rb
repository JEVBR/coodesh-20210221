class Launcher < ApplicationRecord
  enum status: { draft: 0, published: 1, archived: 2 }

  validates_presence_of :imported_t
  validates_presence_of :status
  validates_presence_of :data
  validates_presence_of :imported_id
end
