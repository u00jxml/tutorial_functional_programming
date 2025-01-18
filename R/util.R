

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


##  FUNCION: resumo conjunto de datos de iris
calc_iris_mean <- function(data){
    data |> 
        summarise(
            across(
                where(is.numeric), mean
            ),
            .by = Species
        ) |> 
        pivot_longer(
            cols = where(is.numeric),
            names_to = "measure",
            values_to = "mean"
        ) |> 
        arrange(
            desc(mean)
        ) |> 
        group_by(measure) |> 
        arrange(
            desc(mean),
            .by_group = TRUE
        ) |> 
        ungroup()
}


## FUNCION: Resumir una media de variables numericas 
calc_numeric_mean <- function(data, group) {
    data |> 
        summarise(
            across(
                where(is.numeric), \(x) mean(x, na.rm = TRUE)
            ),
            .by = {{ group }}  
        ) |> 
        pivot_longer(
            cols = where(is.numeric),
            names_to = "measure",
            values_to = "mean"
        ) |> 
        arrange(
            desc(mean)
        ) |> 
        group_by(measure) |> 
        arrange(
            desc(mean),
            .by_group = TRUE
        ) |> 
        ungroup()
}























calc_numeric_mean <- function(data, group) {
    data |> 
        summarise(
            across(
                where(is.numeric), \(x) mean(x, na.rm = TRUE)
            ),
            .by = {{ group }}  
        ) |> 
        pivot_longer(
            cols = where(is.numeric),
            names_to = "measure",
            values_to = "mean"
        ) |> 
        arrange(
            desc(mean)
        ) |> 
        group_by(measure) |> 
        arrange(
            desc(mean),
            .by_group = TRUE
        ) |> 
        ungroup()
}







