module ApplicationHelper
	  # Elimina tildes y caracteres que pueden afectar las busquedas:
  def formatString(string)
    # Pasa todo a minuscula y elimina espacios:
    string = string.downcase.strip
    # Elimina tildes:
    string = string.gsub(/[áÁ]/, 'a')
    string = string.gsub(/[éÉ]/, 'e')
    string = string.gsub(/[íÍ]/, 'i')
    string = string.gsub(/[óÓ]/, 'o')
    string = string.gsub(/[úÚüÜ]/, 'u')
    # Corrige la Ñ si existe:
    string = string.gsub('Ñ', 'ñ')
    # Elimina puntos y guiones:
    string = string.gsub(/[.-]/, '')
    
    # Retorna el termino con formato de busqueda:
    return string
  end

end
