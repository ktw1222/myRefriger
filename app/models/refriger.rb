class Refriger < ActiveRecord::Base
  belongs_to :user
  has_many :foods, dependent: :destroy
end
