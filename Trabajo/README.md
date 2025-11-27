# Ideas, 23/10

Sonic Pi puede ser intervenido a través de sensores en Arduino. El circuito va a ser cerrado, retroalimentándose con algo hecho en (de preferencia) Hydra. Imagen acompañada de 
sonido. Ambas serán violentas, estridentes, compartiendo su agresividad mutuamente. No quiero meter palabras, por lo que voy a intentar ocultarlas lo máximo 
posible, éstas estarían también desprovistas de significado, pues no cumplen ninguna función, ni quiero darles una

Este circuito sería como el del año pasado pero bien hecho, efectivo, construido. Meta: Lograr que lo que ocurre en Sonic Pi afecte a lo que ocurre en Hydra y viceversa

# Primeros pasos, 25/10

Luego de estar batallando un poco con Sonic Pi, pude informarme lo suficiente para que con ayuda de Copilot pudiera darle instrucciones concretas que me dieran un resutado favorable. "acidproyect" es el nombre de esta pista caótica, luego veré cómo puedo hacer que mute cuando se comunique con Processing

=====================================================================================================

<img width="1424" height="782" alt="Captura de pantalla 2025-11-03 a la(s) 11 03 01 a m" src="https://github.com/user-attachments/assets/9f5c0e5e-89c3-4903-9ad8-9223d1e741e9" />

# Ligeros avances, 27/10

A medida que escribo esto, todavía no hago que Processing se comunique con lo que sucede en Arduino o Sonic Pi, pero gracias a tomar de referencia los tutoriales de Processing pude generar ruido visual multicolor. Luego me encargaré de que se vea más abrasivo y caótico para que calce, pero para ser una primera vez considero que está bastante bien

=====================================================================================================

<img width="1409" height="828" alt="Captura de pantalla 2025-11-03 a la(s) 10 53 03 a m" src="https://github.com/user-attachments/assets/c03c218b-6c26-40db-8004-5544c08ecd9c" />

# Respondiendo, 28/10

Processing y su ruido visual ya es bastante responsivo con lo que sucede en el Arduino, los colores son agresivos y su cambio lo es más, falta incorporar Sonic pi para que la música cambie al momento de que el LDR detecte un cambio, de manera que el micrófono lo detecte y cambie lo que se ve en Processing, retroalimentándose

# Revisión, y puesta formal de Ante-Proyecto 30/10

Lo que llevo hasta ahora es una revisión, un rescate a un proyecto que había hecho el año pasado y que busco que ahora funcione. Éste era un circuito cerrado de retroalimentación, fallando en que los estímulos lograran el efecto de que se estuvieran comunicando mutua y activamente. Una onda se proyectaba, reaccionando a un sonido detectado por un micrófono, y la fuente de sonido estaba, se supone, conectada a un LDR que detectaría la propia onda, algo que no resultó pues la idea de cerrar el circuito no terminaba de encajar con mi visión, pero ahora puedo decir que voy con mucha más seguridad respecto a mi trabajo. Ahora esta idea ha madurado conmigo, incluyendo mi concepción en general de lo que hago, podría decirse que esta es mi obra más "Yo" si es que se me entiende. Quiero que se transmita la idea de estar sumergido en un pozo de ácido, que todo lo sensorial sea estridente y agresivo, que es a como yo he visto actuar y entiendo que funciona el ácido. Otra cosa importante es que yo proceso las cosas a través del color, por eso no puedo dejarlo de lado sin importar el trabajo que esté haciendo, por eso está presente en ésta obra también, que en teoría empieza por una fuente de sonido apabullante (Sonic Pi), el visual inicial es un muro de ruido de colores (Processing), casi como una visión de calor. El micrófono detecta el ruido: el visual se oscurece, a lo cual el LDR debería detectar la baja de luz para bajar drásticamente el volumen de la música, momento en que los colores vuelven a ser vibrantes, hay ruido, es detectado, y el ciclo se reinicia.

Materiales usados: 
-Arduino
-Micrófono
-Ldr
-Processing
-Sonic Pi
-Proyector(montaje)
-Parlantes(montaje)
-Atril de micrófono (es para el LDR)
-Placa de cobre

=======================================================================================================

<img width="1431" height="756" alt="Captura de pantalla 2025-11-03 a la(s) 11 06 06 a m" src="https://github.com/user-attachments/assets/34296160-0ac1-41d0-956c-d65b963c6b70" />

# Un muro, 03/11

Processing se encuentra dentro de todo calibrado, tengo todavía que trabajar para que el paso de colores claros a oscuros se vea más natural y menos como el movimiento de una cortina, pero algo que me está retrasando es el hecho de que no logro que Sonic Pi reaccione a los datos que sé que le llegan. Se imprime en la parte de "Cues" que la información desde Processing (LDR/Micrófono) llega correctamente, y éste mismo tiene todo en orden

# Cerca del montaje final, 27/11

Mucho no se ha avanzado, he intentado que Sonic Pi pueda reaccionar a los datos que le llegan desde Processing pero lee mejor cuando no está corriendo, mientras que estando activo apenas  detecta y sin actuar en base a dichos datos, incluso con la aclaración desde processing que va a leer cada 20000 milisegundos. La semana pasada pude asegurarme de que el proyector no manda una luz excesiva, inlcuso es más "oxidada" de lo que esperaba en el sketch, como si de verdad fuera ácido. El LDR está bien soldado al cable paralelo, eso no me preocupa, lo que sí lo hace es que la información no afecta en nada

Ahora, por las sugerencias del profesor he incluido un atril de micrófono donde voy a evidenciar la presencia de la resistencia fotosensible, afortunadamente pude encontrar uno bastante barato y que alcanza al proyector. Justo hoy también tuve la ocurrencia de pegar una de mis placas de cobre usadas en grabado para mantener cierta materialidad donde estará el sensor de luz


