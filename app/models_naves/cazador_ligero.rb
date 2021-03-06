class CazadorLigero < NaveAtaque

  ##############################################################################
  #### CONFIGURACIONES Y RELACIONES
  ##############################################################################

  establecer_costos metal: 3000, cristal: 1000
  establecer_fuego_rapido sonda_espionaje: 5, satelite_solar: 5

  ##############################################################################
  #### SCOPES Y VALIDACIONES
  ##############################################################################


  ##############################################################################
  #### MÉTODOS PÚBLICOS
  ##############################################################################

  def cumple_requisitos?
    propietario.hangar.nivel >= 1 && propietario.cuenta.tecnologia_combustion.nivel >= 1 && super
  end

  ##############################################################################
  #### ALIAS E IMPRESIONES
  ##############################################################################


  ##############################################################################
  #### MÉTODOS PRIVADOS
  ##############################################################################

  private

  def configurar
    establecer_caracteristicas estructura: 4000, escudo: 10, poder: 50, carga: 50, velocidad: 12500, consumo: 20
  end

end
