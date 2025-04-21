
| Nombre                  | Código    |
| ----------------------- | --------- |
| Cristian Eduardo Botina | A00395008 |
| Juan Manuel Marin <br>  | A00382037 |

Se preparó un Script de Java que itera números de $1$ a $10^{18}$,  imprimiéndolo si es un primo, se usa un algoritmo estándar para la verificación que corre con una complejidad de $\sqrt{n}$:



```java
public class Primes {

    private static boolean isPrime(long n) {
        if (n < 2) {
            return true;
        }
        for (long i = 2; i * i <= n; i++) {
            if (n % i == 0) {
                return true;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        long MAX_N = 1000000000000000000l;
        for (long i = 0; i < MAX_N; i++) {
            if (isPrime(i)) {
                System.out.println(args[0] + ": " + i);
            }
        }
    }
}
```

Se iniciaron los 2 procesos al mismo tiempo y se estableció la prioridad alta para un proceso y baja para otro, alta para el a, y baja para b. El proceso con PID=12796 es el que imprime a, mientras que el PID=64248 imprime b. Con esto se logró que el proceso a tenga una ligera ventaja, por lo que se cambió la prioridad a baja para a, y alta para b.

![[Captura de pantalla 2025-03-20 073936.png]]

Después de esperar un tiempo, el proceso b supera al a debido a una mayor cantidad de ráfagas de CPU asignadas.

![[Captura de pantalla 2025-03-20 074154.png]]

En este punto se cambiaron nuevamente las prioridades, con alta para a y baja para b, con el objetivo de que el proceso a vuelva a tomar la delantera. El proceso a volvió a ser el más rápido y luego de un par de minutos volvió a ser a el del mayor número.

![[Captura de pantalla 2025-03-20 074258.png]]