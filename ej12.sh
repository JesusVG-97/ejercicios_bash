#!/bin/bash
sumar() {
    echo $(($1 + $2))
}

restar() {
    echo $(($1 - $2))
}

dividir() {
    if [ $2 -eq 0 ]; then
        echo "Error: No se puede dividir por cero."
    else
        echo $(($1 / $2))
    fi
}

multiplicar() {
    echo $(($1 * $2))
}

while true; do
    echo "Menú:"
    echo "1 - Sumar"
    echo "2 - Restar"
    echo "3 - Dividir"
    echo "4 - Multiplicar"
    echo "0 - Salir"

    read opcion

    case $opcion in
        1)
            echo "Ingrese dos numeros:"
            read -p "Introduce el primer numero " num1
            read -p "Introduce el segundo numero " num2
            echo "Resultado: $(sumar $num1 $num2)"
            ;;
        2)
            echo "Ingrese dos numeros:"
            read -p "Introduce el primer numero "  num1
            read -p "Introduce el segundo numero " num2
            echo "Resultado: $(restar $num1 $num2)"
            ;;
        3)
            echo "Ingrese dos numeros:"
            read -p "Introduce el primer numero " num1
            read -p "Introduce el segundo numero " num2
            echo "Resultado: $(dividir $num1 $num2)"
            ;;
        4)
            echo "Ingrese dos numeros:"
            read -p "Introduce el primer numero " num1
            read -p "Introduce el segundo numero " num2
            echo "Resultado: $(multiplicar $num1 $num2)"
            ;;
        0)
            echo "Saliendo del programa."
            exit 0
            ;;
        *)
            echo "Error: Opcion no valida. Intentalo de nuevo."
            ;;
    esac
done

