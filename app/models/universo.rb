# Los universos se pueden configurar. Cada universo posee 9 galaxias.
class Universo < ActiveRecord::Base

  ##############################################################################
  #### CONFIGURACIONES Y RELACIONES
  ##############################################################################

  has_many :planetas

  has_many :cuentas
	has_many :jugadores, through: :cuentas

  ##############################################################################
  #### SCOPES Y VALIDACIONES
  ##############################################################################

	validates :nombre, presence: true, uniqueness: true

  ##############################################################################
  #### MÉTODOS PÚBLICOS
  ##############################################################################

  def ranking
    cuentas.to_a.sort_by(&:puntos).reverse
  end

  def esta_lleno?
    # false # planetas.libre.count < cantidad_planetas_por_cuenta
    planetas.libre.count == cantidad_galaxias.next * cantidad_sistemas.next * cantidad_planetas.next
  end

  def coordenadas_random
    galaxia = rand(cantidad_galaxias).next
    sistema = rand(cantidad_sistemas).next
    planeta = rand(cantidad_planetas).next
    { numero_galaxia: galaxia, numero_sistema: sistema, numero_planeta: planeta }
  end

  def coordenadas_libres
    coord = coordenadas_random
    planeta = planetas.where(coordenadas_random).first
    planeta.nil? ? coord : coordenadas_libres
  end

  def crear_planeta_libre!
    planetas.create!(coordenadas_libres)
  end

  ##############################################################################
  #### ALIAS E IMPRESIONES
  ##############################################################################

  alias_attribute :to_s, :nombre
  alias_attribute :to_label, :nombre

  ##############################################################################
  #### MÉTODOS PRIVADOS
  ##############################################################################

  private

end
