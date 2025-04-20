## **1. Método de Valor Ganado (EVM - Earned Value Management)**

### **Conceptos clave:**

- **Objetivo**: Evaluar el desempeño del proyecto en términos de costo y tiempo.
- **Componentes principales**:
    1. **Valor Planeado (PV - Planned Value)**: El valor del trabajo planificado hasta un momento determinado.
    2. **Valor Ganado (EV - Earned Value)**: El valor del trabajo realmente completado hasta ese momento.
    3. **Costo Real (AC - Actual Cost)**: El costo real incurrido en el trabajo completado.

### **Indicadores de desempeño:**

- **Índice de Desempeño de Costo (CPI - Cost Performance Index)**:
    $CPI=EVACCPI = \frac{EV}{AC}$
    - CPI > 1: Proyecto con ahorro en costos.
    - CPI < 1: Proyecto sobrecosteado.

- **Índice de Desempeño de Cronograma (SPI - Schedule Performance Index)**:
    $SPI=EVPVSPI = \frac{EV}{PV}$
    - SPI > 1: Proyecto adelantado.
    - SPI < 1: Proyecto retrasado.

- **Variación de Costo (CV - Cost Variance)**:
    $CV=EV−ACCV = EV - AC$
    - CV > 0: Se gasta menos de lo presupuestado.
    - CV < 0: Se gasta más de lo presupuestado.

- **Variación de Cronograma (SV - Schedule Variance)**:
    $SV=EV−PVSV = EV - PV$
    - SV > 0: Proyecto adelantado.
    - SV < 0: Proyecto retrasado.

### **Proyecciones:**

- **Estimación del Costo a la Conclusión (EAC - Estimate at Completion)**:
    $EAC=BAC/CPIEAC = BAC / CPI$
    - **BAC**: Presupuesto del proyecto.

- **Estimación para Terminar (ETC - Estimate to Complete)**:
    $ETC=EAC−ACETC = EAC - AC$

- **Variación a la Conclusión (VAC - Variance at Completion)**:
    $VAC=BAC−EACVAC = BAC - EAC$
    - Si VAC > 0: Se espera ahorro.
    - Si VAC < 0: Se espera sobrecosto.

### **Ventajas del EVM:**

- Permite identificar desviaciones temprano.
- Ayuda a gestionar costos y tiempos de manera más precisa.
- Facilita la toma de decisiones basada en datos reales.

## **Conceptos**

1. Diagramas de red del cronograma del proyecto:
- Representan actividades y sus relaciones
- Ayudan a justificar estimaciones de tiempo
- Muestran interdependencias entre actividades
- Permiten identificar oportunidades para comprimir el cronograma

2. Método de la Ruta Crítica (CPM):
- Determina la ruta más larga a través del diagrama de red
- Identifica el tiempo mínimo para completar el proyecto
- Ayuda a enfocar esfuerzos de gestión
- Permite comprimir el cronograma cuando hay cambios

3. Tipos de Holgura:
- Holgura Total: Retraso posible sin afectar fecha de finalización
- Holgura Libre: Retraso posible sin afectar actividades sucesoras
- Holgura del Proyecto: Retraso posible sin afectar fecha impuesta externamente

4. Cálculo de Holgura:
Fórmulas:
- Holgura = LS - ES 
- Holgura = LF - EF 
Donde:
LS = Comienzo tardío
ES = Inicio temprano
LF = Final tardío
EF = Final temprano

5. Proceso de cálculo:
- Recorrido hacia adelante: Calcula inicios/finales tempranos
- Recorrido hacia atrás: Calcula inicios/finales tardíos
- Las actividades con holgura cero están en la ruta crítica

6. Consideraciones importantes:
- Tener en cuenta puntos de convergencia de rutas
- Usar consistencia en cálculos (inicio en 0 o 1)
- La ruta crítica puede cambiar si varían duraciones de actividades

## **2. Método de Ruta Crítica (CPM - Critical Path Method)**

### **Conceptos clave:**

- **Objetivo**: Identificar las actividades críticas de un proyecto para minimizar retrasos.
- **Ruta crítica**: Secuencia más larga de tareas interdependientes que determinan la duración total del proyecto.
- **Flotación o Holgura**: Tiempo que una actividad puede retrasarse sin afectar la fecha de finalización.

### **Elementos principales:**

1. **Duración de las actividades**: Tiempo estimado para cada tarea.
2. **Dependencias**: Relaciones entre actividades (predecesoras y sucesoras).
3. **Fechas de inicio y finalización**:

- **Inicio más temprano (ES - Early Start)**: Primer momento en que una tarea puede comenzar.
- **Finalización más temprana (EF - Early Finish)**: ES + Duración.
- **Inicio más tardío (LS - Late Start)**: Último momento en que una tarea puede comenzar sin retrasar el proyecto.
- **Finalización más tardía (LF - Late Finish)**: LS + Duración.

### **Cálculo de la Ruta Crítica:**

1. **Paso 1**: Identificar todas las actividades y su duración.
2. **Paso 2**: Establecer las dependencias entre actividades.
3. **Paso 3**: Calcular el **camino más largo** (ruta crítica).
4. **Paso 4**: Determinar la holgura de las actividades no críticas.
5. **Paso 5**: Monitorear el avance y actualizar la ruta crítica según cambios en el proyecto.

### **Ventajas del CPM:**

- Ayuda a optimizar tiempos y recursos.
- Permite enfocar esfuerzos en actividades clave.
- Reduce riesgos de retraso al identificar tareas críticas.

A continuación, se presenta un resumen de los conceptos principales del capítulo sobre **Seguimiento - Método de Valor Ganado** basado en el contenido proporcionado:

---

### **1. Análisis de Valor Ganado (EVM - Earned Value Management):**
El análisis de valor ganado es una técnica integral que combina medidas de **alcance**, **costo** y **tiempo** para evaluar el desempeño del proyecto. Se basa en tres dimensiones clave:
- **PV (Planned Value o Valor Planificado):** Es el presupuesto autorizado asignado al trabajo planificado para completar una actividad o componente de la EDT/WBS.
- **AC (Actual Cost o Costo Real):** Es el costo incurrido por el trabajo realizado hasta un momento específico.
- **EV (Earned Value o Valor Ganado):** Es la medida del trabajo realmente completado, expresada en términos de presupuesto.

**Fórmulas básicas:**
- **EV = BAC × % de avance real**
  - Donde **BAC (Budget at Completion)** es el presupuesto total del proyecto.

---

### **2. Métricas Derivadas:**
Para evaluar el desempeño del proyecto, se utilizan métricas derivadas como varianzas e índices de desempeño:

#### **a) Variaciones:**
- **CV (Cost Variance - Variación de Costo):**
  - **CV = EV - AC**
  - **Interpretación:** 
    - CV > 0: Eficiencia (se está gastando menos de lo trabajado).
    - CV < 0: Ineficiencia (se está gastando más de lo trabajado).

- **SV (Schedule Variance - Variación de Cronograma):**
  - **SV = EV - PV**
  - **Interpretación:**
    - SV > 0: El proyecto está adelantado.
    - SV < 0: El proyecto está retrasado.

#### **b) Índices de Desempeño:**
- **CPI (Cost Performance Index - Índice de Desempeño de Costo):**
  - **CPI = EV / AC**
  - **Interpretación:**
    - CPI > 1: Eficiencia (se está gastando menos de lo trabajado).
    - CPI < 1: Ineficiencia (se está gastando más de lo trabajado).

- **SPI (Schedule Performance Index - Índice de Desempeño del Cronograma):**
  - **SPI = EV / PV**
  - **Interpretación:**
    - SPI > 1: El proyecto está adelantado.
    - SPI < 1: El proyecto está retrasado.

---

### **3. Análisis de Tendencias:**
El análisis de tendencias evalúa el desempeño del proyecto a lo largo del tiempo para determinar si está mejorando o empeorando. Utiliza herramientas como:

#### **a) Curvas S:**
- Representan gráficamente los valores de **PV**, **EV** y **AC** a lo largo del tiempo.
- **Interpretación:**
  - Si **EV < PV**: El proyecto está retrasado.
  - Si **AC > PV**: El proyecto está sobrecostado.

#### **b) Pronósticos:**
Se utilizan para estimar el costo final del proyecto y el trabajo restante. Las principales métricas son:

- **EAC (Estimate at Completion - Estimación a la Conclusión):**
  - **Métodos de cálculo:**
    1. **Suponiendo eficiencia constante (CPI):**
       - **EAC = BAC / CPI**
    2. **Considerando variaciones actuales (CPI y SPI):**
       - **EAC = AC + ((BAC - EV) / (CPI × SPI))**
    3. **Con base en una nueva estimación:**
       - **EAC = AC + Nueva estimación de costos faltantes**

- **ETC (Estimate to Complete - Estimación hasta la Conclusión):**
  - **ETC = EAC - AC**

---

### **4. Ejemplo Práctico:**
Se utiliza un proyecto con un presupuesto total (**BAC**) de $200,000 y una duración de 12 meses para ilustrar los conceptos:

#### **Datos:**
- Al finalizar el quinto mes:
  - **% de avance real:** 30%.
  - **AC acumulado:** $58,000.
  - **PV acumulado:** $90,000.

#### **Cálculos:**
1. **Valor Ganado (EV):**
   - **EV = BAC × % de avance real = $200,000 × 30% = $60,000.**

2. **Variaciones:**
   - **CV = EV - AC = $60,000 - $58,000 = $2,000 (Eficiente).**
   - **SV = EV - PV = $60,000 - $90,000 = -$30,000 (Retrasado).**

3. **Índices de Desempeño:**
   - **CPI = EV / AC = $60,000 / $58,000 ≈ 1.03 (Eficiente).**
   - **SPI = EV / PV = $60,000 / $90,000 ≈ 0.66 (Retrasado).**

4. **Pronósticos:**
   - **EAC (con CPI):**
     - **EAC = BAC / CPI = $200,000 / 1.03 ≈ $193,333.**
   - **ETC:**
     - **ETC = EAC - AC = $193,333 - $58,000 ≈ $135,333.**

---

### **5. Interpretaciones Clave:**
- **Eficiencia en costos (CPI > 1):** Aunque el proyecto está dentro del presupuesto, el retraso en el cronograma (SPI < 1) indica que no se ha completado el alcance planificado.
- **Importancia del SPI:** Los retrasos en el cronograma pueden afectar los costos futuros, especialmente si las actividades críticas se ven comprometidas.
- **Uso de pronósticos:** Los métodos de pronóstico permiten ajustar las expectativas y tomar decisiones informadas para corregir desviaciones.

---

### **Conclusión:**
El método de valor ganado es una herramienta poderosa para monitorear y controlar proyectos, ya que integra alcance, tiempo y costo en una sola métrica. Su implementación permite identificar desviaciones tempranas y tomar acciones correctivas para garantizar el éxito del proyecto.

# Taller 1
![[Drawing 2025-04-02 16.26.28.excalidraw|700]]

# Taller 2
### **Ejercicio 1**

**Datos:**

- Total de oficinas: 10
- Costo por oficina: $50,000
- Duración total: 20 meses
- Tiempo transcurrido: 12 meses
- Oficinas completadas: 5
- Costo total gastado: $310,000

**Cálculos:**

A. **BAC (Budget at Completion)** = Total de oficinas * Costo por oficina = 10 * 50,000 = **$500,000**

B. **AC (Actual Cost)** = Costo total gastado = **$310,000**

C. **PV (Planned Value)** = (Oficinas esperadas en 12 meses / Total de meses) * BAC

- Oficinas esperadas: (12/20) * 10 = 6
- PV = 6 * 50,000 = **$300,000**

D. **EV (Earned Value)** = Oficinas completadas * Costo por oficina = 5 * 50,000 = **$250,000**

E. **CV (Cost Variance)** = EV - AC = 250,000 - 310,000 = **-60,000** (sobrecostos)

F. **CPI (Cost Performance Index)** = EV / AC = 250,000 / 310,000 = **0.81**

G. **SV (Schedule Variance)** = EV - PV = 250,000 - 300,000 = **-50,000** (retraso)

H. **SPI (Schedule Performance Index)** = EV / PV = 250,000 / 300,000 = **0.83**

I. **EAC (Estimate at Completion)** = BAC / CPI = 500,000 / 0.81 = **$617.283,95**

J. **ETC (Estimate to Complete)** = EAC - AC = 617.283,95 - 310,000 = **$307.283,95**



### **Ejercicio 2**

**Datos:**

- Total de km: 15
- Presupuesto total: $930,000
- Duración total: 35 semanas
- Tiempo transcurrido: 13 semanas
- Km completados: 7
- Costo por km: $58,000
- Costo total gastado: 7 * 58,000 = **$406,000**

**Cálculos:**

A. **BAC** = $930,000

B. **AC** = $406,000

C. **PV** = (13/35) * 930,000 = **$345,428.57**

D. **EV** = (7/15) * 930,000 = **$434,000**

E. **CV** = EV - AC = 434,000 - 406,000 = **$28,000** (bajo presupuesto)

F. **CPI** = EV / AC = 434,000 / 406,000 = **1.07**

G. **SV** = EV - PV = 434,000 - 345,428.57 = **$88,571.43** (adelantado)

H. **SPI** = EV / PV = 434,000 / 345,428.57 = **1.26**

I. **EAC** = BAC / CPI = 930,000 / 1.07 = **$869,158.88**

J. **ETC** = EAC - AC = 869,158.88 - 406,000 = **$463,158.88**



### **Ejercicio 3**

**Datos:**

- Total de oficinas: 6
- Costo total proyectado: $100,000
- Duración total: 5 semanas
- Tiempo transcurrido: 2 semanas
- Oficinas completadas: 2
- Costo total gastado: 2 * 17,500 = **$35,000**

**Cálculos:**

A. **BAC** = $100,000

B. **AC** = $35,000

C. **PV** = (2/5) * 100,000 = **$40,000**

D. **EV** = (2/6) * 100,000 = **$33,333.33**

E. **CV** = EV - AC = 33,333.33 - 35,000 = **-1,666.67** (sobrecostos)

F. **CPI** = EV / AC = 33,333.33 / 35,000 = **0.95**

G. **SV** = EV - PV = 33,333.33 - 40,000 = **-6,666.67** (retraso)

H. **SPI** = EV / PV = 33,333.33 / 40,000 = **0.83**

I. **EAC** = BAC / CPI = 100,000 / 0.95 = **$105,263.16**

J. **ETC** = EAC - AC = 105,263.16 - 35,000 = **$70,263.16**



### **Ejercicio 4**

**Datos:**

- Duración total: 12 meses
- Presupuesto total: $12,500 * 12 = **$150,000**
- Tiempo transcurrido: 6 meses
- Porcentaje completado: 50%
- Costo total gastado: $70,000

**Cálculos:**

A. **BAC** = $150,000

B. **AC** = $70,000

C. **PV** = (6/12) * 150,000 = **$75,000**

D. **EV** = (50% * 150,000) = **$75,000**

E. **CV** = EV - AC = 75,000 - 70,000 = **$5,000** (bajo presupuesto)

F. **CPI** = EV / AC = 75,000 / 70,000 = **1.07**

G. **SV** = EV - PV = 75,000 - 75,000 = **0** (sin retraso)

H. **SPI** = EV / PV = 75,000 / 75,000 = **1.00**

I. **EAC** = BAC / CPI = 150,000 / 1.07 = **$140,186.92**

J. **ETC** = EAC - AC = 140,186.92 - 70,000 = **$70,186.92**
