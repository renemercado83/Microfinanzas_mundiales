
# Solicita los datos al usuario
read -p "Ingrese el capital inicial: " capital
read -p "Ingrese la tasa de interés (en porcentaje, por ejemplo, 5 para 5%): " tasa
read -p "Ingrese el tiempo (en años): " tiempo

# Convierte la tasa de porcentaje a decimal
tasa_decimal=$(echo "$tasa / 100" | bc -l)

# Calcula el interés simple
interes=$(echo "$capital * $tasa_decimal * $tiempo" | bc -l)

# Muestra el resultado con dos decimales
printf "El interés simple es: %.2f\n" "$interes"
