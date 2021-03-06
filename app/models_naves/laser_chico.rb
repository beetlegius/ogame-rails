class LaserChico < NaveDefensa

  # CONFIG

  establecer_costos metal: 1500, cristal: 500
  establecer_fuego_rapido

  # CALLBACKS

  # RELATIONS

  # SCOPES

  # VALIDATIONS

  # CLASS METHODS

  # INSTANCE METHODS

  def cumple_requisitos?
    propietario.hangar.nivel >= 2 && propietario.cuenta.tecnologia_energia.nivel >= 1 && propietario.cuenta.tecnologia_laser.nivel >= 3 && super
  end

  # ALIASES

  # PRIVATE METHODS

  private
  
  def configurar
    establecer_caracteristicas estructura: 2000, escudo: 25, poder: 100
  end

end
