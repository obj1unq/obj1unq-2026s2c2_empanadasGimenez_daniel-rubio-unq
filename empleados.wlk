object gimenez {
    var fondo = 300000
    method pagarSueldo(empleado) {                                  // paga sueldo a cualquier empleado
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo()
    }
}

object galvan {
    var sueldo = 15000
    var saldo = 0                                                   //arranca con deuda en 0 y dinero en 0
    method sueldo() {                                               // es im getter. galvan.sueldo() es para saber cuanto pagarle    
        return sueldo
    }
    method sueldo(_sueldo) {                                        // el sueldo es 15000  es un setter, si lleva parametos es la cantidad de sueldo
        sueldo = _sueldo
    }
    method cobrarSueldo() {                                         //cobra  el sueldo y se lo suma al saldo de galvan, el enunciado dice que arranca en 0
        saldo += self.sueldo() 
    }
    method dinero() {                                               // dinero disponible de galvan
        return saldo.max(0)
    } 
    method deuda() {                                                // min(0) es la parte negativa, si el saldo es positivo el min sera 0
        return saldo.min(0).abs()
    }
    method gastar(monto) {                                          // si galvan usa dinero de su saldo
       saldo -= monto
    }
}
object baigorria {
    var empanadasVendidas = 0
    const precioPorEmpanada = 15
    var totalCobrado = 0
    method sueldo(){                                                // el sueldo de baigorria depende de la cantidad que venda
        return empanadasVendidas * precioPorEmpanada
    }
    method vender(empanadas) {                                      //contador de empanadas vendidas
        empanadasVendidas += empanadas
    }
    method cobrarSueldo() {                                         //cobra el sueldo
        totalCobrado += self.sueldo() 
        empanadasVendidas = 0                                       //reinicia el total cada mes
    }
    method totalCobrado() {                                         //suma a un acumulador de todo lo que cobró
        return totalCobrado
    }
    
}

