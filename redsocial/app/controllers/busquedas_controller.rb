class BusquedasController < ApplicationController
	def index
		busquedaProfile = params[:busqueda_principal]
	    busqLugar = params[:busqueda_lugar]
	    
	    # Arreglo que se va a mostrar:
	    toShow = view_context.search(busquedaProfile, busqLugar)

	    if !busquedaProfile.blank?
	      # Seccion o palabra clave encontrada directamente:
	      @seccTag = view_context.identifySeccTag(busquedaProfile)
	    end

	    if !busqLugar.blank?
	      # Departamento o municipio encontrado directamente:
	      @place = view_context.identifyPlace(busqLugar)
	    end

	    # Ordena los resultados filtrados, según el plan de su contrato base:
	    result = view_context.get_ordenadas(toShow)
	    # Total de resultados:
	    @totalResults = result.size.to_s
	    # Finalmente formatea el arreglo de las empresas encontradas, para mostrarlo:
	    @busquedas = Kaminari.paginate_array(result).page(params[:page]).per(30)

	end
end
