Base de datos cuya finalidad es validar usuario y creación de plantillas para exámenes tipo test online. En la base de datos, tenemos un total de 8 tablas, de los cuales se dividirán en dos partes, la de usuarios y del modelo de examen.

La primera parte está dedicada a la de usuarios. El usuario, para entrar, necesitará de correo y teléfono, aunque se pueda configurar para mandar contraseñas en lugar de teléfono. Una vez que se haya validado esos dos requisitos, se le proporcionará los modelos de exámenes, que es la segunda parte de la BBDD.

En la segunda parte de la BBDD, se centra en los modelos de examen que a su vez constará de 7 tablas. La primera relaciona a los usuarios y los modelos, e incorporará el día del examinación y su nota correspondiente.

La tercera tabla es el modelo de examen, en los que se encuentra la descripción del modelo, de cuándo va a ser y el día. Esta tabla tiene una tabla secundaria en la que describe que modelo va a ser. En este caso, como hay 4 exámenes divididos en 2 días, serán 2 modelos A y 2 Modelos B, de los cuales un modelo de cada será en un día y los otros al día siguiente.

la quinta tabla se refiere a los "subexámenes" que tiene ese modelo, es decir, la tabla modelo sería el examen general y la tabla examen los apartados. En esta tabla describe el apartado de cada examen, la cantidad de preguntas que tiene, y la puntuación mínima que tienen.

La sexta tabla hace referencia a las preguntas que tiene cada apartado del examen, por ejemplo, un apartado tiene 100 preguntas, otro 40....

La séptima tabla se refiere a las respuestas que tiene cada pregunta, en este caso, todas las preguntas tienen 4 respuestas. En 3 apartados que tiene cada apartado del modelo, el "subexamen" se elegirá una respuesta posible mientras que el último apartado, tiene varias para elegir. También, dentro de esta tabla, tendrá una descripción de tipo booleano, que dice cuáles de las respuestas son correctas.

La octava y última tabla, se refiere a las respuestas que elijan los usuarios, que mediante una función INSERT, se guardarán las respuestas seleccionadas.

Con esta BBDD se pueden crear tantas plantillas como deseen con todas las preguntas y respuestas que quieran. Les proporciono un INSERT vacios en cada tabla para que manualmente puedan insertar tantos datos como crean conveniente.

Espero que les sirvan de gran ayuda. Un cordial saludo a todos.
