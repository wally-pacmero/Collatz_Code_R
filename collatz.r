collatz = function(n){ # Define una función llamada 'collatz' que toma un número 'n' como entrada.
    secuencia = n # Inicializa la 'secuencia' con el número de entrada 'n'.
    while(n != 1){ # Continúa el bucle hasta que 'n' sea igual a 1.
    if(n%%2 == 0){ # Comprueba si 'n' es par (el operador '%%' es el módulo).
        n = n / 2 # Si 'n' es par, divídelo por 2.
    }
    else{ # Si 'n' es impar.
        n = (n * 5) + 1 # Si 'n' es impar, multiplícalo por 5 y súmale 1.
    }
    secuencia = c(secuencia, n) # Añade el nuevo valor de 'n' a la 'secuencia'.
  }
    print(n) # Imprime el valor final de 'n' (que siempre será 1).
    cat("Pasos: ", length(secuencia) -1, "\n") # Imprime el número de pasos (longitud de la secuencia menos 1).
    cat("Máximo: ", max(secuencia), "\n") # Imprime el valor máximo alcanzado en la secuencia.
    cat("Secuencia ", paste(secuencia, "\n")) # Imprime toda la secuencia de números.
}

collatz(sample(1:1000000000, 1)) # Llama a la función 'collatz' con un número aleatorio entre 1 y 1.000.000.000.
