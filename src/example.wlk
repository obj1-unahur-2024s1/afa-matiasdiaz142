//Festejo

object festejo{
	const invitado = messi
	const lugar = bombonera
	const precioEntrada = 10000 * (inflacion.porcentajeInflacion()+1)
	const costoLogistica = 10000000
	
	method entradasVendidas(){
		return (messi.popularidad()/100)*lugar.capacidad()
	}
	method recaudacionTotal(){
		return self.entradasVendidas()*precioEntrada
	}
	method gananciaNeta(){
		return self.recaudacionTotal() - invitado.viaticos() - costoLogistica - lugar.alquiler()
	}
}

//Estadios

object bombonera{
	const capacidad = 50000
	const alquiler = 50000000
	method capacidad() = capacidad
	method alquiler() = alquiler
}

object monumental{
	var estadoAvanceObras = 70
	const alquiler = 80000000
	method capacidad() = 70000 * estadoAvanceObras
	method alquiler() = alquiler
	method avanzarObras(unPorcentaje){
		estadoAvanceObras = 100.min(estadoAvanceObras + unPorcentaje)
	}
}

//Jugadores

object messi{
	var popularidad = 98
	const viaticos = 20000000
	method popularidad() = popularidad
	method viaticos() = viaticos
	method opinarDelPresidente(){popularidad = popularidad - 10}
}

object ronaldo{
	const popularidad = messi.popularidad()/2
	const viaticos = 15000000
	var ubicacionJugador
	method popularidad() = popularidad
	method viaticos() = viaticos
	method ubicacionJugador(unLugar){ubicacionJugador = unLugar}
}

object mbappe{
	var edad = 25
	const golesFinalesDelMundo = 4
	const popularidad = edad*2 + golesFinalesDelMundo
	const viaticos = 10000000
	method popularidad() = popularidad
	method viaticos() = viaticos
	method cumplirAnios(){edad = edad + 1}
}

//Lugar
object antartida{}

//Otros

object inflacion{
	var porcentajeInflacion = 15
	method porcentajeInflacion() = porcentajeInflacion/100
	method porcentajeInflacion(nuevoPorcentaje){porcentajeInflacion = nuevoPorcentaje}
}