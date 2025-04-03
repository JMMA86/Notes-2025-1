**Resumen del Método de Valor Ganado en Gestión de Proyectos**  

El método de valor ganado (EVM) es una técnica integral que integra mediciones de alcance, costo y tiempo para evaluar el desempeño de un proyecto. A continuación, los conceptos clave y aplicaciones presentados en el documento:  

### **Conceptos Básicos**  
1. **Valor Planificado (PV):** Presupuesto autorizado para el trabajo programado hasta una fecha específica.  
2. **Costo Real (AC):** Costo incurrido por el trabajo ejecutado hasta dicha fecha.  
3. **Valor Ganado (EV):** Valor del trabajo realmente completado, calculado como:  
   \[
   EV = BAC \times \% \text{ de avance real}
   \]  
   Donde BAC (Budget at Completion) es el presupuesto total del proyecto.  

---

### **Ejemplo Práctico**  
- **Proyecto:** Presupuesto total (BAC) = $200,000; plazo = 12 meses.  
- **Al 5° mes:**  
  - PV acumulado = $90,000 (41.66% planeado).  
  - AC acumulado = $58,000.  
  - Avance real = 30% → **EV = $60,000** ($200,000 × 30%).  

---

### **Métricas de Desempeño**  
1. **Variación del Costo (CV):**  
   \[
   CV = EV - AC = \$60,000 - \$58,000 = +\$2,000 \quad (\text{Eficiencia en costos})
   \]  
2. **Índice de Desempeño del Costo (CPI):**  
   \[
   CPI = \frac{EV}{AC} = 1.03 \quad (\text{>1: Eficiencia})
   \]  
3. **Variación del Cronograma (SV):**  
   \[
   SV = EV - PV = \$60,000 - \$90,000 = -\$30,000 \quad (\text{Retraso})
   \]  
4. **Índice de Desempeño del Cronograma (SPI):**  
   \[
   SPI = \frac{EV}{PV} = 0.66 \quad (\text{<1: Retraso})
   \]  

---

### **Pronósticos y Tendencias**  
- **Estimación a la Conclusión (EAC):**  
  - **Método 1 (CPI actual):**  
$$

    EAC = \frac{BAC}{CPI} = \frac{\$200,000}{1.03} \approx \$193,333

$$  
  - **Método 2 (CPI y SPI):**  
$$
    EAC = AC + \frac{BAC - EV}{CPI \times SPI} = \$260,999  
$$  
- **Método 3 (Nueva estimación):** Basado en ajustes del equipo, EAC podría ser $222,000.  

- **Estimación hasta la Conclusión (ETC):**  
$$
  ETC = EAC - AC
$$
---

### **Conclusiones**  
- El EVM permite identificar desviaciones tempranas en costos y cronogramas.  
- Un **CPI > 1** indica eficiencia en costos; un **SPI < 1** señala retrasos.  
- Los pronósticos (EAC/ETC) varían según supuestos: eficiencia actual, impacto de retrasos o revisiones presupuestales.  
- Herramientas como curvas S y gráficos de tendencias ayudan a visualizar el desempeño (PV vs. EV vs. AC).  

**Aplicación:** Ideal para proyectos complejos donde la integración de métricas de alcance, tiempo y costo es crítica para la toma de decisiones.

---

Método de Ruta Crítica (Critical Path Method - CPM)

1. Concepto

El Método de Ruta Crítica (CPM) es una técnica utilizada para la planificación y gestión de proyectos. Permite identificar las actividades críticas que determinan la duración total del proyecto y ayudar a optimizar la programación.

2. Elementos Claves del CPM
	•	**Actividades:** Tareas individuales del proyecto.
	•	**Duración de actividades:** Tiempo estimado para completar cada tarea.
	•	**Secuencia de actividades:** Orden en el que deben realizarse las tareas.
	•	**Diagrama de red:** Representación gráfica de las relaciones entre actividades.
	•	**Camino crítico:** La secuencia más larga de actividades sin margen de retraso.

3. Pasos para aplicar CPM
	1.	Identificar actividades y sus dependencias.
	2.	Construir el diagrama de red con nodos y flechas.
	3.	Estimar la duración de cada actividad.
	4.	Determinar la ruta crítica calculando:
	•	Tiempo más temprano (TE) en que cada actividad puede empezar y terminar.
	•	Tiempo más tardío (TL) en que puede comenzar sin retrasar el proyecto.
	•	Holgura (TL - TE) para ver si una actividad puede retrasarse sin afectar el plazo total.

4. Ventajas del CPM
	•	Facilita la planificación y el control del proyecto.
	•	Ayuda a identificar actividades críticas que requieren mayor supervisión.
	•	Permite visualizar holguras y ajustar recursos.
	•	Mejora la toma de decisiones para reducir tiempos o costos.

5. Limitaciones del CPM
	•	No considera incertidumbre en la duración de las tareas.
	•	Puede volverse complejo en proyectos grandes.
	•	No refleja bien recursos limitados.

---

Método de Valor Ganado (Earned Value Management - EVM)

1. Concepto

El Método de Valor Ganado es una técnica para medir el rendimiento y progreso de un proyecto en términos de costo y tiempo. Permite comparar lo que se ha gastado con lo que se ha logrado.

2. Componentes principales
	•	Valor Planificado (PV, Planned Value): Lo que se esperaba haber gastado en un momento dado.
	•	Valor Ganado (EV, Earned Value): El costo del trabajo realmente realizado hasta la fecha.
	•	Costo Real (AC, Actual Cost): Lo que realmente se ha gastado en el proyecto.

3. Indicadores Claves
	•	Variación del Costo (CV) = EV - AC → Muestra si se está gastando más o menos de lo planeado.
	•	Variación del Cronograma (SV) = EV - PV → Indica si el proyecto está adelantado o atrasado.
	•	Índice de Desempeño de Costo (CPI) = EV / AC → Un CPI mayor a 1 indica eficiencia en costos.
	•	Índice de Desempeño de Cronograma (SPI) = EV / PV → Un SPI mayor a 1 significa que el proyecto va adelantado.

4. Beneficios del EVM
	•	Proporciona una visión clara del estado del proyecto.
	•	Permite detectar desviaciones de costo y tiempo.
	•	Facilita la predicción del costo y el tiempo final del proyecto.
	•	Mejora la toma de decisiones y el control.

5. Limitaciones del EVM
	•	Requiere datos precisos y actualizados.
	•	Puede ser difícil de aplicar en proyectos pequeños.
	•	No considera la calidad del trabajo realizado.

⸻

Comparación CPM vs. EVM

Criterio	CPM (Ruta Crítica)	EVM (Valor Ganado)
Objetivo	Determinar la duración mínima del proyecto.	Medir desempeño en tiempo y costo.
Enfoque	Análisis de secuencia de actividades.	Comparación entre costos planificados y reales.
Resultados clave	Identifica el camino crítico.	Proporciona métricas de desempeño.
Usos	Planificación y optimización del cronograma.	Control de costos y tiempo.



⸻

Conclusión

Ambos métodos son esenciales en la gestión de proyectos. El CPM ayuda a programar actividades de manera eficiente, mientras que el EVM permite evaluar el desempeño financiero y de tiempo del proyecto. Idealmente, deben usarse juntos para maximizar el control y la eficiencia del proyecto.

⸻

Si necesitas más detalles sobre algún tema, dime y te ayudo. ¡Éxito en tu examen!