class Quote < ApplicationRecord
  validates :name,:email,:phone,:date,:budget,:comment,:event_id,presence: true
end
