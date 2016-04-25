# En el laboratorio se pueden investigar las tecnologías.
class Laboratorio < Edificio

  ##############################################################################
  #### CONFIGURACIONES Y RELACIONES
  ##############################################################################

  establecer_costos metal: 200, cristal: 400, deuterio: 200

  ##############################################################################
  #### SCOPES Y VALIDACIONES
  ##############################################################################


  ##############################################################################
  #### MÉTODOS PÚBLICOS
  ##############################################################################

  def puede_expandirse?
    super && !propietario.cuenta.tecnologias.any?(&:esta_expandiendose?)
  end

  ##############################################################################
  #### ALIAS E IMPRESIONES
  ##############################################################################


  ##############################################################################
  #### MÉTODOS PRIVADOS
  ##############################################################################

  private

end
