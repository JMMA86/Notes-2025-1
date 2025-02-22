### ii. Transformación en CNF
- $R\to U$: $\neg R \vee U$
- $U\to\neg W$: $\neg U \vee \neg W$
- $\neg R\to\neg W$: $R \vee \neg W$

Conclusión: $\neg W$
### iii. Demostración mediante algoritmo de resolución
1. $\neg R \vee U$ (Premisa)
2. $\neg U \vee \neg W$ (Premisa)
3. $R \vee \neg W$ (Premisa)
4. $(\neg R \vee U) \wedge (\neg U \vee \neg W)$: $\neg R \vee \neg W$ (1 y 2 Resolución)