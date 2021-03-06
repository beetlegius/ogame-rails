# La fábrica de nanobots acelera increíblemente los tiempos de construcción y fabricación de naves.
class FabricaNanobots < Edificio

  ##############################################################################
  #### CONFIGURACIONES Y RELACIONES
  ##############################################################################

  establecer_costos metal: 1000000, cristal: 500000, deuterio: 100000

  ##############################################################################
  #### SCOPES Y VALIDACIONES
  ##############################################################################


  ##############################################################################
  #### MÉTODOS PÚBLICOS
  ##############################################################################

  def puede_expandirse?
    super && propietario.naves_ataque.fabricando.empty? && propietario.naves_defensa.fabricando.empty?
  end
  
  def cumple_requisitos?
    propietario.cuenta.tecnologia_computacion.nivel >= 10 && propietario.fabrica_robots.nivel >= 10 && super
  end

  ##############################################################################
  #### ALIAS E IMPRESIONES
  ##############################################################################


  ##############################################################################
  #### MÉTODOS PRIVADOS
  ##############################################################################

  private

end
