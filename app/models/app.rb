class App < ApplicationRecord

  paginates_per 200

  scope :between,   ->  (start_id, end_id){
    where("id >= ? and id <= ?",
    start_id, end_id)
  }

  scope :starts_with,   ->  (start_id){
    where("id >= ?",
    start_id)
  }
  scope :ends_with,   ->  (end_id){
    where("id <= ?",
    end_id)
  }

  scope :between_name,   ->  (start_name, end_name){
    where("name >= ? and name <= ?",
    start_name, end_name)
  }

  scope :starts_with_name,   ->  (start_name){
    where("name >= ?",
    start_name)
  }
  scope :ends_with_name,   ->  (end_name){
    where("name <= ?",
    end_name)
  }
end
