module BusquedasHelper
	
  # SLA: Metodo encargado de ordenar las empresas, segun el plan que tengan, y el costo adquirido
  def get_ordenadas(profiles) 
    now = Time.now
    hoy = Date.new(now.year,now.month,now.day) 
    #OG: se remplaza el anterior código dado que afectaba el desempeño de la aplicación 
    #ordenadas = Enterprise.joins(:contratos).where('contratos.enterprise_id = ? AND contratos."FechaFinal" >= ?', empresas, hoy).order('contratos.plan_base_id ASC, contratos."ValorTotal" DESC, contratos."FechaInicial" DESC') 
    #OG: la anterior expresión no se ajustaba correctamente a la conversión de tipos de datos                                       # SLA: El ordenamiento por plan_base NO FUNCIONA MAS por los combos!
    #ordenadas = Enterprise.includes(:contratos).where('contratos.enterprise_id' => empresas).where('contratos."FechaFinal" >= ?', hoy).order('contratos.plan_base_id ASC, contratos."ValorTotal" DESC, contratos."FechaInicial" DESC').to_a
    # SLA: El ordenamiento se da por el coeficiente, y no el plan base
    ordenadas = Profile.includes(:plans).where('plans.profile_id' => profiles).where('plans."fechaFinal" >= ?', hoy).order('plans.sort_coeficient ASC, plans."valor" DESC, plans."fechaInicial" DESC').to_a

    ordenadas.uniq!

    return ordenadas
  end
  # ============== get_ordenadas


  # SLA: Metodo para buscar empresas, por seccion:
  def get_profile_by_seccion(seccion)
    # Encontro la seccion, trae todas las empresas de dicha seccion y las agrega al arreglo:
    empSeccs = Profile.joins("INNER JOIN seccion_profiles ON profiles.id = seccion_profiles.profile_id").where("seccion_profiles.seccion_id = ?", seccion.id)    
    return empSeccs

  end # CLOSE BY_SECCION

  # SLA: Metodo para buscar empresas, por palabra clave:
  def get_profile_by_tag(tag)
    # Encontro la palabra clave, trae todas las empresas de dicha palabra clave y las agrega al arreglo:
    empTags = Enterprise.joins("INNER JOIN entreprises_palabra ON enterprises.id = entreprises_palabra.enterprise_id").where("entreprises_palabra.tag_id = ?", tag.id)
    return empTags

  end # CLOSE BY_TAG

  # SLA: Metodo para buscar empresas, por municipio:
  def get_profile_by_municipio(municipio)
    empMunicipios = Enterprise.joins("INNER JOIN sucursales ON enterprises.id = sucursales.enterprise_id INNER JOIN barrios ON barrios.id = sucursales.barrio_id INNER JOIN zonas ON zonas.id = barrios.zona_id INNER JOIN municipios ON municipios.id = zonas.municipio_id").where("municipios.id = ?", municipio.id)  
    return empMunicipios

  end # CLOSE BY_MUNICIPIO

  # SLA: Metodo para buscar empresas, por municipio:
  def get_profile_by_dpto(dpto)
    empDptos = Enterprise.joins("INNER JOIN sucursales ON enterprises.id = sucursales.enterprise_id INNER JOIN barrios ON barrios.id = sucursales.barrio_id INNER JOIN zonas ON zonas.id = barrios.zona_id INNER JOIN municipios ON municipios.id = zonas.municipio_id INNER JOIN departamentos ON departamentos.id = municipios.departamento_id").where("departamentos.id = ?", dpto.id)
    return empDptos

  end # CLOSE BY_DPTO

  # SLA: Metodo para buscar empresas, por su nombre comercial (MEDIANTE SOLR):
  def get_profile_by_name(input)
    
    return "javier"
  end

  # SLA:Metodo para buscar empresas, por el primer criterio (nombre comercial, seccion y palabra clave)
  def get_profile_by_1(busqUniq)
    toShow = []
    # Busca la empresa exacta:
    empUniq = Profile.where('(lower("nombrePerfil")) = ?', busqUniq).first

    if empUniq.nil?
      # Si no encuentra una empresa exacta, debe buscar por seccion exacta y por palabra clave exacta:

      # Busca la seccion exacta:
      seccUniq = Section.where('(lower("nombre")) = ?', busqUniq).first

      if seccUniq.nil?
        # Si no encuentra una seccion exacta, debe buscar por palabra clave exacta:

        # Busca la seccion exacta:
        tagUniq = Tag.where('(lower(nombre)) = ?', busqUniq).first

        if !tagUniq.nil?
          # Encontro la palabra clave, trae todas las empresas de dicha palabra clave y las agrega al arreglo:
          empTags = get_profile_by_tag(tagUniq)
          toShow.concat(empTags)
        end


      else
        # Encontro la seccion, trae todas las empresas de dicha seccion y las agrega al arreglo:
        empSeccs = get_profile_by_seccion(seccUniq)
        toShow.concat(empSeccs)
      end

      
      # Agrega las empresas por nombre:
      byName = get_profile_by_name(busqUniq)
      toShow.concat(byName)
      # Depura el arreglo de empresas:
      
      toShow.uniq!


    else
      # Encontro la empresa, la agrega al arreglo y ya:
      toShow.push(empUniq)
    end

    return toShow
    
  end # CLOSE BY_1


  # SLA:Metodo para buscar empresas, por el segundo criterio (lugar)
  def get_profile_by_2(busqUniqLugar)
    toShow = []
    # Busca el lugar, si es departamento o municipio:
    municipioUniq = Municipio.where("(lower(nombre)) = ?", busqUniqLugar).first

    if municipioUniq.nil?
      # No es un municipio, busca por los departamentos:
      dptoUniq = Departamento.where("(lower(nombre)) = ?", busqUniqLugar).first

      if !dptoUniq.nil?
        # Encontro el departamento, trae todas las empresas de dicho municipio y las agrega al arreglo:
        empDptos = get_profile_by_dpto(dptoUniq)
        toShow.concat(empDptos)
      end

    else

      # Es municipio, actualiza el valor de la cookie:
      if defined?(cookies[:ciudad])
      # Definida, cambia su valor:
      cookies[:ciudad] = municipioUniq.nombre
      else
        # Nula, la crea:
        cookies[:ciudad] = 
        {
          :value => municipioUniq.nombre, #Valor de la cookie.
          :expires => 1.year.from_now, #Tiempo antes de expirar (En este caso 1 año)
          :domain => :all #En qué partes de nuestra página estará disponible (En este caso en todo el sitio)
        }
      end

      # Encontro el municipio, trae todas las empresas de dicho municipio y las agrega al arreglo:
      empMunicipios = get_profile_by_municipio(municipioUniq)  
      toShow.concat(empMunicipios)
    end

    return toShow

  end # BY_2

  # SLA: Modularizacion de busquedas
  def search(busquedaPerfil, busqLugar)
    toShow = []
    # Formatea los inputs de búsqueda:
    if !busquedaPerfil.blank?
      busqUniq =  formatString(busquedaPerfil) 
    end

    if !busqLugar.blank?
      busqUniqLugar = formatString(busqLugar) 
    end

    # ========== Caso 1: NO empresa - NO lugar ==========
    if busquedaPerfil.blank? && busqLugar.blank?
      # Todas las empresas (toma los primeros 100 registros, para evitar saturacion):
      toShow = Profle.all.take(100)


    # ========== Caso 2: SI empresa - NO lugar ==========
    elsif !busquedaPerfil.blank? && busqLugar.blank?
      # Empresas por el primer criterio:
      toShow = get_profile_by_1(busqUniq)

    # ========== Caso 3: NO empresa - SI lugar ==========
    elsif busquedaPerfil.blank? && !busqLugar.blank?
      # Empresas por el segundo criterio:
      toShow = get_profile_by_2(busqUniqLugar)
      

    # ========== Caso 4: SI empresa - SI lugar ==========
    else
      # Busca la empresa exacta:
      empUniq = Enterprise.where('(lower("NombreComercial")) = ?', busqUniq).first

      if empUniq.nil?
        byOne = get_profile_by_1(busqUniq).sort{|a,b| a.id <=> b.id }
        byTwo = get_profile_by_2(busqUniqLugar).sort{|a,b| a.id <=> b.id }
        toShow = byOne & byTwo
      else
        toShow.push(empUniq)
      end

    end

    return toShow
    
  end
  # =============

  # SLA: Metodo que dado un criterio de busqueda, identifica si es una seccion o palabra clave especifica:
  def identifySeccTag(busquedaPerfil)
    busqUniq =  formatString(busquedaPerfil) 
    # Busca la seccion exacta:
    seccUniq = Section.where('(lower("nombre")) = ?', busqUniq).first
    # Busca la palabra clave exacta:
    tagUniq = Tag.where('(lower(nombre)) = ?', busqUniq).first

    return [seccUniq, tagUniq]
  end
  # ----- identifySeccTag

  # SLA: Metodo que dado un criterio de busqueda, identifica si es un municipio o un departamento especifico:
  def identifyPlace(busqLugar)
    busqUniqLugar =  formatString(busqLugar) 
    # Busca el municipio especifico
    municipioUniq = Municipio.where("(lower(nombre)) = ?", busqUniqLugar).first
    # Busca el departamento especifico
    dptoUniq = Departamento.where("(lower(nombre)) = ?", busqUniqLugar).first

    return [municipioUniq, dptoUniq]
  end
  # ------ identifyPlace


end
