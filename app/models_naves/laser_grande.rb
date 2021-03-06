class LaserGrande < NaveDefensa

  # CONFIG

  establecer_costos metal: 6000, cristal: 2000
  establecer_fuego_rapido

  # CALLBACKS

  # RELATIONS

  # SCOPES

  # VALIDATIONS

  # CLASS METHODS

  # INSTANCE METHODS

  def cumple_requisitos?
    propietario.hangar.nivel >= 4 && propietario.cuenta.tecnologia_energia.nivel >= 3 && propietario.cuenta.tecnologia_laser.nivel >= 6 && super
  end

  # ALIASES

  # PRIVATE METHODS

  private
  
  def configurar
    establecer_caracteristicas estructura: 8000, escudo: 100, poder: 250
  end

end
