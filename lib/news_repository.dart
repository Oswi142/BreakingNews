import 'news.dart';

class NewsRepository {
  Future<List<News>> getNews() async {
    List<News> newsList = [
      News(
        title: 'La Alcaldía conforma un Comité de Defensa del Consumidor',
        description: 'La Alcaldía de Cochabamba conformó este lunes el Comité de Defensa del Consumidor para evitar el incremento exagerado de los productos de primera necesidad con la participación de varias instituciones como la Cámara Agropecuaria de Cochabamba, las comerciantes, juntas vecinales, transportistas y el Comité Cívico, entre otras.',
        urlToImage: "assets/images/noti1.png",
        type: NewsType.local,
      ),
      News(
        title: 'Defensa de Camacho solicitará su traslado por inseguridad en Chonchocoro',
        description: 'Martín Camacho, abogado del gobernador, anunció la intención de solicitar el traslado de Luis Fernando Camacho a otro lugar más seguro. "Es claro que el Centro Penitenciario de Chonchocoro no es un lugar en donde la vida del gobernador esté a salvo. No es un lugar en realidad donde la vida de ningún privado de libertad esté a salvo", afirmó el jurista a la red Unitel..',
        urlToImage: "assets/images/noti2.png",
        type: NewsType.local,
      ),
      News(
        title: 'Aíslan a seis reos por la pelea en Chonchocoro y alistan procesos',
        description: "Al menos seis privados de libertad fueron separados y aislados tras la gresca entre reos del Bloque B del penal de alta seguridad de Chonchocoro, en La Paz, informó el director de Régimen Penitenciario, Juan Carlos Limpias.Están identificados los autores de la gresca entre reos. Los primeros cinco han sido aislados y separados, (Misael) Nallar también fue aislado y separado, llegarán a 8 o 10 personas implicadas, dijo Limpias a la prensa en La Paz. Nallar guarda detención preventiva por el triple asesinato de Porongo (Santa Cruz) en junio de 2022. Al menos seis (reclusos) están aislados porque serían las cabecillas (...). Tomando en cuenta las agresiones y la situación que se ha presentado, la Fuerza Especial de Lucha Contra el Crimen ha acudido de manera inmediata y estas personas van a ser investigadas por el delito de tentativa de homicidio y deterioro de bienes del Estado, informó este lunes el comandante departamental de la Policía, coronel Edgar Cortez.",
        urlToImage: "assets/images/noti3.png",
        type: NewsType.local,
      ),
      News(
        title: 'Grupo de socios toma un piso del edificio de Comteco',
        description: 'Un grupo de socios de la Cooperativa de Telecomunicaciones Cochabamba R.L. (Comteco) irrumpió, la mañana de este lunes, en el piso 8 de su edificio principal, mientras otros protestaron en el acceso principal exigiendo la devolución del valor de sus certificados de aportación, la intervención de la Autoridad de Fiscalización y Control de Cooperativas (Afcoop) y la cesación de funciones de dos miembros del Consejo de Administración, informó a Los Tiempos Ramiro Bolaños, secretario general de la Coordinadora de defensa de los socios de Comteco.Los movilizados, “unos 30” según Bolaños, consideraban declararse en huelga de hambre en el piso ocupado donde están los ambientes de los consejos de Administración y Vigilancia.',
        urlToImage: "assets/images/noti4.png",
        type: NewsType.local,
      ),

      News(
        title: 'Consejo de Seguridad aprueba resolución de EEUU de apoyo a la propuesta de tregua en Gaza',
        description: 'El Consejo de Seguridad de la ONU aprobó este lunes una resolución presentada por Estados Unidos de apoyo a la propuesta de tregua que dio a conocer al presidente Joe Biden el 31 de mayo, en la que se establece un plan de tres fases para poner fin a la guerra en Gaza.La resolución, aprobada por 14 votos a favor con la única abstención de Rusia, supone ya la cuarta aprobada en el Consejo de Seguridad relativa a la guerra en Gaza, aunque las tres anteriores han quedado en papel mojado al negarse Israel a detener la ofensiva en el territorio palestino, un conflicto que se ha cobrado ya más de 37.000 muertos.El documento "envía un claro mensaje a Hamás: que acepten el alto el fuego sobre la mesa. Israel ya ha dado su visto bueno al acuerdo, y los combates podrían cesar hoy si Hamás hace lo mismo", dijo la embajadora de EE.UU. . ante la ONU, Linda Thomas-Greenfield, aunque el Gobierno del Estado judío ha sido hasta ahora ambiguo sobre los términos de ese plan.En sustancia, la resolución, que obtiene un inédito y casi unánime apoyo, pide aprobar esa propuesta de tregua que llama a "un alto el fuego inmediato y la liberación de los rehenes" en manos de Hamás.',
        urlToImage: "assets/images/noti5.png",
        type: NewsType.international,
      ),
      News(
        title: 'Javier Milei cumple seis meses con superávit fiscal, pero déficit político y de gestión',
        description: "El presidente de Argentina, Javier Milei, cumple este lunes seis meses al frente del Ejecutivo, un tiempo en el que ha llevado a cabo un severo ajuste económico que le permitió lograr superávit fiscal, un asunto clave dados los antecedentes de Argentina, pero lidia con las complicaciones políticas de una minoría parlamentaria.En una Argentina despedazada como la que encontramos, por supuesto que no hay ni una décima parte del trabajo realizado, porque hubo poco tiempo y estaba colapsada la Argentina e infectada de populismo y de unas formas que no son las de un país normal, describió hoy el portavoz presidencial, Manuel Adorni, en conferencia de prensa en la sede del Ejecutivo.",
        urlToImage: "assets/images/noti6.png",
        type: NewsType.international,
      ),
      News(
        title: 'Dos chicos de 12 años declarados culpables de asesinar a otro de 19 en Inglaterra',
        description: 'Dos chicos de 12 años fueron declarados culpables, este lunes, por un jurado, de asesinar a puñaladas a otro de 19 en un ataque no provocado en un parque de la localidad de Wolverhampton, en el centro de Inglaterra. Los dos preadolescentes, que no pueden ser identificados por motivos legales, mataron a Shawn Seesahai con un cuchillo tipo machete el 13 de noviembre de 2023 y serán sentenciados en una próxima audiencia en julio. Se cree que serán las dos personas más jóvenes en ser condenadas por asesinato en el Reino Unido desde que en 1993 Robert Thompson y Jon Venables, de diez años de edad, lo fueron por matar a James Bulger, de dos años, en un caso que conmocionó a este país. También serán los más jóvenes en ser condenados por asesinato con un cuchillo, de acuerdo con la prensa británica.',
        urlToImage: "assets/images/noti7.png",
        type: NewsType.international,
      ),

      News(
        title: '“En mi piel”, femenina y empoderada',
        description: 'Brillar con luz propia y dejar huella por donde vaya cada mujer es lo que intenta transmitir la diseñadora Isabel Bloch con su nueva colección denominada “En mi piel”. Los abrigos elaborados con fibras de baby alpaca en su totalidad destacan por la distinción y originalidad de cada pieza. “Inspirada en la mujer femenina, empoderada, que brilla con luz propia y deja huella por donde va. Entramos en una nueva estación y, con ella traemos una nueva manera de llevar los abrigos, más largos con sugerentes cortes, cuellos y puños que son protagonistas”, afirma Bloch.',
        urlToImage: "assets/images/noti8.png",
        type: NewsType.gossip,
      ),
      
      News(
        title: 'Anhelo el camino soñado para ser mamás',
        description: "Cada vez es más frecuente que las mujeres profesionales posterguen su maternidad para destacarse en el trabajo o consolidarse económicamente. Sea cual fuera el motivo, hoy por hoy, tres  exitosas comunicadoras Marcela Gonzales, Dennis Quiroga y Sandra Alcázar viven su anhelado momento. Todas son madres primerizas después de los 36 años y contaron a la revista OH! sus temores, alegrías y travesías para cumplir el sueño de tener un hijo. Todas planificaron ser madres y algunas lo consiguieron de manera inmediata y otras enfrentaron procesos más complicados para lograrlo. Ser madre después de los 36 años es más difícil porque la fertilidad en la mujer disminuye considerablemente.",
        urlToImage: "assets/images/noti9.png",
        type: NewsType.gossip,
      ),
      
      News(
        title: 'Piraí Vaca: “Vine a este mundo con la música”',
        description: 'El guitarrista cruceño Piraí Vaca destaca por la magia que trasmite en el escenario, aquello que empezó con la guitarra clásica ha evolucionado a un estilo propio que ahora explota con otro tipo de “sonoridades”. Vaca está de gira por el país y en una entrevista especial con OH! contó sus primeras vivencias con la música, los aprendizajes y sus planes en el futuro inmediato.—¿Cómo nace la pasión de dedicarse a la música? —Te voy a responder con todos los años que tengo encima, eso quiere decir que durante toda mi vida puede haber distintas respuestas para esto, pero lo más importante que te puedo decir al respecto es que no lo sé. Creo que aquellas cosas que no tienen una respuesta lógica son las más profundas. Aquellas preguntas que no puedes responder con la mente, así como no te puedo decir yo por qué hago música o desde cuándo. Entonces, mis padres dicen que un día, cuando yo tenía cinco años, ellos me agarraron con una guitarra de pie. Entonces, supusieron quizás que, como hijo de artista, porque mi padre es el pintor Lorgio Vaca, un artista plástico extraordinario, podría ser músico.',
        urlToImage: "assets/images/noti10.png",
        type: NewsType.gossip,
      ),
    ];

    await Future.delayed(const Duration(seconds: 2));

    return newsList;
  }
}