collatz = function(n){
  secuencia = n
  max_iter = 200        # límite de seguridad
  pasos = 0
  while(n != 1 && pasos < max_iter){
    if(n %% 2 == 0){
      n = n / 2
    } else {
      n = (n * 5 + 1) / 2
    }
    secuencia = c(secuencia, n)
    pasos = pasos + 1
  }
  if(n == 1){
    cat("Convergió a 1\n")
  } else {
    cat("No convergió en", max_iter, "pasos → posible divergencia\n")
  }
  cat("Pasos:", length(secuencia) - 1, "\n")
  cat("Máximo:", max(secuencia), "\n")
  cat("Secuencia:", paste(secuencia, collapse = " → "), "\n")
}
