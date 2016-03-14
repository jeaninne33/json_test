class Palabra < ActiveRecord::Base
  validates :nombre,:descripcion, presence: true
  validates :nombre, uniqueness: { scope: :descripcion }


end
