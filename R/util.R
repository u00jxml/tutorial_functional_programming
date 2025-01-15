

## FUNCION: Convertir Girth de pulgadas a centimetros
convert_in_to_cm <- function(x) {
    x * 2.54
}


## FUNCION:  Convertir Hight de pies a metros
convertir_pies_a_metros <- function(x) {
    x * 0.3048
}


## FUNCION: Calcular Volumen en m3
calculo_volumen <- function(diametro, altura){
    pi / 4 * (diametro/100)^2 * altura
}

