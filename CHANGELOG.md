# Changelog

## Versión: v0.2 (2018-08-28)

- Prueba con configuración de host para cloudapp, ahora con
  disableHostCheck. [Edgar F. Fuentes Perea (EFP)]
- Prueba con configuración de host para cloudapp. [Edgar F. Fuentes
  Perea (EFP)]
- Se modificó la configuración para que ademas de usar localhost,
  también se pueda usar 0.0.0.0. [Edgar F. Fuentes Perea (EFP)]
- Se resolvió el problema para generar la carpeta de distribución.
  [Edgar F. Fuentes Perea (EFP)]
- Se agregó carpeta src/scripts para que funcione el comando 'npm run
  build'. [Edgar F. Fuentes Perea (EFP)]
- Se regresa a localhost. [Edgar F. Fuentes Perea]
- Cambio temporal. [Edgar F. Fuentes Perea]
- Se formatearon json y se eliminaron botones de acciones extra en la
  ventana modal. [Edgar F. Fuentes Perea (EFP)]
- Se agregaron íconos a los botones de relación con otras entidades en
  Search Results. [Edgar F. Fuentes Perea (EFP)]
- Se agrega libreria para formatear json antes de iniciar la aplicación.
  [Edgar F. Fuentes Perea (EFP)]
- Se generan cambios para marcar campos como obligatorios en el
  componente attach-photo.tag. [SOFTTEK\javier.perezb]
- Se modifican tags selcct-box y select-auto para cargar datos de json
  opcionales. [SOFTTEKCLIENTS\marcop.perez]
- Se quita la referencia del redirect en ele boton busqueda de la
  seccion criterios de busqueda. [SOFTTEK\javier.perezb]
- Se genera ajuste para diferenciar un Search Complex de un Search
  Simple. [SOFTTEK\javier.perezb]
- Se generan cambios en los componentes searchpanel.tag, panel.tag,
  formbox.tag, para presentar de forma dinamica los componentes search,
  botones add, edit, delete, segun lo configurado en el atributo
  scaffold de los entity. [SOFTTEK\javier.perezb]
- Se agregó regla en ESLint para evitar errores con comas de más en el
  código generado. [Edgar F. Fuentes Perea (EFP)]
- Se agregaron archivos de configuración de Cypress. [Edgar F. Fuentes
  Perea (EFP)]
- Se agregó la dependencia con Cypress para ejecutar las capturas de
  pantalla para la documentación. [Edgar F. Fuentes Perea (EFP)]
- Se agregó el logo de Softtek para generar el PDF. [Edgar F. Fuentes
  Perea (EFP)]
- Evitar que en el componente search-panel al oprimir buscar se vaya a
  una url fija. [Edgar F. Fuentes Perea (EFP)]
- Se usó las 12 columnas en la sección con los criterios de búsqueda del
  CRUD. [Edgar F. Fuentes Perea (EFP)]
- Se eliminar cambios de prueba para validaciones de formbox.
  [rmoctezumacstk]
- Se agrega validación de formbox para inputbox y select-
  box[type="select"][rmoctezumacstk]
- Se agregan datos fake a las tablas de resultados y se muestran
  solamente los que son declarados como display_result=true.
  [SOFTTEKCLIENTS\marcop.perez]
- Update. [rmoctezumacstk]
- Se actualiza aplicacion para agregar datos de prueba clienteTest.
  [SOFTTEKCLIENTS\marcop.perez]
- Se actualizan ids de inputbox para quitar el numero 3.
  [SOFTTEKCLIENTS\marcop.perez]
- Nuevo tag ''option-matrix' [rmoctezumacstk]
- Se agrega nuevo dato de prueba. [rmoctezumacstk]
- Se agrega funcionalidad al modal. Refactorización del select-list.
  [rmoctezumacstk]
- Merge branch 'master' of github.com:efuentesp/riot-ui-prototype.
  [Edgar F. Fuentes Perea (EFP)]
- Se pone formato por default "dd/mm/yyyy" en el caso de que no se
  inicialice el atributo format en el date-picker. Cambios en tags que
  contenian date-picker para que acepte los nuevos cambios.
  [rmoctezumacstk]
- Cambiar estilo de boton de simple-admin y color de botones del select-
  list. [Edgar F. Fuentes Perea (EFP)]
- Merge branch 'master' of github.com:efuentesp/riot-ui-prototype.
  [Edgar F. Fuentes Perea (EFP)]
- Depuración de código y se agregan más datos como prueba del select-
  list en el JSON. [rmoctezumacstk]
- Merge branch 'master' of https://github.com/efuentesp/riot-ui-
  prototype. [rmoctezumacstk]
- Se agrega nueva lógica para el componente select-list para agregarle
  funcionalidad. [rmoctezumacstk]
- Ajustes de estilos. [Edgar F. Fuentes Perea (EFP)]
- Se elimino col-sm-3 del componente search-box. [Edgar F. Fuentes Perea
  (EFP)]
- Se puso login como pagina de inicio. [Edgar F. Fuentes Perea (EFP)]
- Decoración de algunos botones a default. [Edgar F. Fuentes Perea
  (EFP)]
- Se agrega nuevo tag select-auto. [rmoctezumacstk]
- Se toma "precision" de archivo config.json en caso de que no se ponga
  el atributo en inputbox. [rmoctezumacstk]
- Fix para el select-list.tag. [Marco Polo Perez Cervantes]
- Se agrega el type "phone" para inputbox. [rmoctezumacstk]
- Se agrega la opción "integer" al atributo "type" para el inputbox.
  [rmoctezumacstk]
- Mejora de método para contar líneas en textarea. [rmoctezumacstk]
- Se agrega validación para contar el número de líneas en un inputbox,
  type="textarea". [rmoctezumacstk]
- Marco's update: Se agrega nuevo tag tablist. [rmoctezumacstk]
- Se agrega tag select-list. [Marco Polo Perez Cervantes]
- Se cambia el atributo "checked" por "selected" para que sea más
  genérico para los tres tipos de select-box: select, check y option.
  [rmoctezumacstk]
- Se agrega el atributo "checked" en option-box para select-box de tipo:
  "option" y "check". [rmoctezumacstk]
- Se agrega la opción "custom" en el formbox. Se agrega en el Cliente
  Agregar el ejemplo. [rmoctezumacstk]
- Merge branch 'master' of https://github.com/efuentesp/riot-ui-
  prototype. [rmoctezumacstk]
- Mejora a la validacion de botones en form-wizard.tag. [Marco Polo
  Perez Cervantes]
- Se incluye el atributo value para poder ingresar un valor por default
  en el date-picker. Se agrega el atributo required para que aparezca el
  asterisco rojo al lado del label. [rmoctezumacstk]
- Se agrega validación cuando el usuario ingresa algo diferente a una
  cuenta de email. (inputbox, type="email") [rmoctezumacstk]
- Validacion de botones en form-wizard.tag. [Marco Polo Perez Cervantes]
- Se agrega tag (reservaciones-01-consultat). Opcion de busqueda de
  vuelo. 20 mins. [Marco Polo Perez Cervantes]
- Se agrega tag (reservaciones-04). Último paso del wizard. 20 mins.
  [Marco Polo Perez Cervantes]
- Se agrega tag (reservaciones-01-buscar-vuelo-seleccionado) en
  aplicacion kukulkan agencia. Primer paso del wizard. 20 mins. [Marco
  Polo Perez Cervantes]
- Se agrega tag (reseravciones-03.tag) en aplicacion kukulkan agencia.
  Tercer paso del wizard. 20 mins. [Marco Polo Perez Cervantes]
- Se agrega tag (reseravciones-02.tag) en aplicacion kukulkan agencia.
  Segundo paso del wizard. 20 mins. [Marco Polo Perez Cervantes]
- Se agrega tag de resultados de busqueda (reseravciones-01-buscar.tag)
  en aplicacion kukulkan agencia. 30 mins. [Marco Polo Perez Cervantes]
- Se agrega aplicacion KukulKan Agencia. Tags reservaciones-wizard y
  paso reservaciones-01. 50 mins. [Marco Polo Perez Cervantes]
- Modificación de searchpanel para criterios de búsqueda. [Raúl
  Moctezuma]
- Se ajustó tabla para mostrar los option boxes cuando se usa action
  =select-one. [Marco Polo Perez Cervantes]
- Merge branch 'master' of github.com:efuentesp/riot-ui-prototype.
  [Edgar F. Fuentes Perea (EFP)]
- Se agrega tag modal-box y search-box. Se agrega ejemplo de uso en
  clienteAdmin.tag. [Marco Polo Perez Cervantes]
- Se agregan nuevos tags: actions, action-group y action-button. Se
  modifica Search Panel. Modificaciones de estilos. [rmoctezumacstk]
- Se agrega tag simple-admin. [Marco Polo Perez Cervantes]
- Se agrega logica de acciones agrupadas en tablas. [Marco Polo Perez
  Cervantes]
- Inicio del ejemplo para Banorte. [Edgar F. Fuentes Perea (EFP)]
- Se agrega tag pagination-bar. Y se agrega logica a table-results y
  search results para mostrar paginacion opcional. [Marco Polo Perez
  Cervantes]
- Merge branch 'master' of https://github.com/efuentesp/riot-ui-
  prototype. [rmoctezumacstk]
- Se ajusto el Login y paginación en español. [Edgar F. Fuentes Perea
  (EFP)]
- Corrección en expresión regular para que sea case insensitive a la
  hora de detectar extensiones de archivos. [rmoctezumacstk]
- Se agregó un componente note. [Edgar F. Fuentes Perea (EFP)]
- Resolver conflicto en inputbox por espacio antes del \*. [Edgar F.
  Fuentes Perea (EFP)]
- Merge branch 'master' of https://github.com/efuentesp/riot-ui-
  prototype. [rmoctezumacstk]
- Se modifica la lógica del tag 'attach-photo' para que pueda aceptar
  los atributos: id, label, height, width, maxsizemb, filetypes. Se
  corrigen los labels para el atributo required en inputbox y select-
  box. Se agregan ejemplos de attach-photo en Cliente Agregar. Se quitan
  referencias que ya no se utilizarán. [rmoctezumacstk]
- Se decoraron los botones del wizard y del agregar para el crud. [Edgar
  F. Fuentes Perea (EFP)]
- Se concluyó el ejemplo del IMSS. [Edgar F. Fuentes Perea (EFP)]
- Se comentó el table-results de pensiones del paso 8 del ejemplo del
  IMSS. [Edgar F. Fuentes Perea (EFP)]
- Merge branch 'master' of github.com:efuentesp/riot-ui-prototype.
  [Edgar F. Fuentes Perea (EFP)]
- Se agrega login en el menú y se agrega logica de archivos de datos en
  carpeta tabledata. [Marco Polo Perez Cervantes]
- Se agregaron pasos para el ejemplo del IMSS. [Edgar F. Fuentes Perea
  (EFP)]
- Merge branch 'master' of github.com:efuentesp/riot-ui-prototype.
  [Edgar F. Fuentes Perea (EFP)]
- Correción de errores en index.js y efectos en progress-bar.
  [rmoctezumacstk]
- Opción de menú nueva para prototipo IMSS y reorganizar tags en
  index.js. [Edgar F. Fuentes Perea (EFP)]
- Se agrega el nuevo tag "progress-bar" [rmoctezumacstk]
- Se agrega el atributo "min" y "max" para input box de tipo: float y
  currency. Además, se agrega json para cargar mensajes de error en
  inputbox. [rmoctezumacstk]
- Se agrega archivo de configuracion para valores por default.Se agrega
  validacion de atributo precision para table results. [Marco Polo Perez
  Cervantes]
- Se incluye formateo currency en tag table-results. Falta agregar que
  lea defaults desde un archivo de configuracion. [Marco Polo Perez
  Cervantes]
- Merge branch 'master' of https://github.com/efuentesp/riot-ui-
  prototype. [rmoctezumacstk]
- Se agrega tag login.tag. [Marco Polo Perez Cervantes]
- Se agrega el atributo minsize y maxsize (inputbox, type: "text").
  [rmoctezumacstk]
- Se agrega el tag "outputtext" y se pone un ejemplo en "Cliente
  Agregar". [rmoctezumacstk]
- Se agrega el routing a la aplicacion. [Marco Polo Perez Cervantes]
- Se agrega la opción select a la etiqueta "option-box" [rmoctezumacstk]
- Se agrega tag table-results con paginación(draft) [Marco Polo Perez
  Cervantes]
- Se quitaron warnings de elementos duplicados del inputbox y
  datepicker. [Marco Polo Perez Cervantes]
- Se agrega el nuevo tag "attach-photo". [raul.moctezuma]
- Reestructuracion de carpetas que contienen los tags e index.js. [Marco
  Polo Perez Cervantes]
- Se ajustó el asterisco del inputbox. [Marco Polo Perez Cervantes]
- Merge branch 'master' of https://github.com/efuentesp/riot-ui-
  prototype. [raul.moctezuma]
- Se ajustó el title a todos los pages. [Marco Polo Perez Cervantes]
- Se agregó visualización del paso actual en el Wizard. Se ajusto el
  titulo de las instacias de los wizards para que fueran parecidas a las
  demás opciones. [Marco Polo Perez Cervantes]
- Se agregan iconos para el tag InputBox y un asterisco rojo en el caso
  de que el campo sea requerido. También se realizan cambios en algunos
  componentes de pages que contienen id's duplicados. [raul.moctezuma]
- Se eliminan bordes del tag "column" [raul.moctezuma]
- Se agregan opciones a la etiqueta date-picker: format, mindate,
  maxdate. Además se quitan logs de prueba en inputbox. [rmoctezumacstk]
- Corrección de código para validar flotantes y moneda en InputBox.
  Código innecesario en date-picker y modificación de placeholder en
  Cliente Agregar. [rmoctezumacstk]
- Ajuste de date-picker (estilos) [rmoctezumacstk]
- Se modifica el date-picker para que al seleccionar el textbox como el
  botón, muestre el calendario. [rmoctezumacstk]
- Se agrega la opción "placeholder" al date-picker. [rmoctezumacstk]
- Merge branch 'master' of https://github.com/efuentesp/riot-ui-
  prototype. [rmoctezumacstk]
- Se ajustó el boton de Acciones para que sea opcional, si no hay
  informacion en el json referente a Actions entonces no lo muestra.
  [Marco Polo Perez Cervantes]
- Se modifica código de date-picker para insertar 'n' cantidad de estos
  componentes. [rmoctezumacstk]
- Ajuste al comportamiento del Wizard, por default aparece el primer
  paso. [Marco Polo Perez Cervantes]
- Se agregaron iconos a los nuevos menus. [Edgar F. Fuentes Perea (EFP)]
- Se agregaron nuevos menus y pantallas para demo (merged). [Edgar F.
  Fuentes Perea (EFP)]
- Se ajustó el acomodo del boton Acciones del tag searhpanel. [Marco
  Polo Perez Cervantes]
- Se agregaron nuevos menus y pantallas para demo. [Edgar F. Fuentes
  Perea (EFP)]
- La carpeta "common" tiene que estar al mismo nivel que la carpeta
  "app", por lo tanto "common" se mueve a components. Corrección del
  "tabledata.js" [rmoctezumacstk]
- Se agregaron acciones al Search Panel. Ademas un botón de agregar.
  [Marco Polo Perez Cervantes]
- Separación de componentes en carpetas: "src/components/app" y
  "src/common". [rmoctezumacstk]
- Se agregan los nuevos tags: "column" y "row". [rmoctezumacstk]
- Se agrega la opción de: "currency" y "float"; para el input-box.
  Además se agrega el nuevo custom tag "date-picker". Todos se pueden
  encontrar ejemplificados en "Agregar Cliente" [rmoctezumacstk]
- Refactoring de tags Wizard y de codigo en index.html. [Marco Polo
  Perez Cervantes]
- Creacion de clienteWizard tag y reduccion de codigo en index.js.
  [Marco Polo Perez Cervantes]
- Cambio de tag span a button. [rmoctezumacstk]
- Se agrega la opción "textarea" para el tag "inputbox". Además se
  agregan los atributos para validar la longitud de un campo(data-
  parsley-minlength y data-parsley-maxlength) [rmoctezumacstk]
- Se agregó el botón 'Regresar' en el CRUD, se agregaron iconos las
  acciones. [Edgar F. Fuentes Perea (EFP)]
- Se modificó la forma de usar submit-button.tag para incluir iconos y
  colores del botón dependiendo de la acción. [Edgar F. Fuentes Perea
  (EFP)]
- Se agregó nuevamente data-parsley-validate en formbox.tag. [Edgar F.
  Fuentes Perea (EFP)]
- Ajuste de estilos y etiquetas en Formas y Panles (conflict fixed).
  [Edgar F. Fuentes Perea (EFP)]
- Se agrega la propiedad 'data-parsley-validate' al formbox para que el
  inputbox funcione con la propiedad required y valide el tipo de input
  en los "inputbox". [rmoctezumacstk]
- Ajuste de estilos y etiquetas en Formas y Panles. [Edgar F. Fuentes
  Perea (EFP)]
- Resolución de conflicto en app.tag. [Edgar F. Fuentes Perea (EFP)]
- Pequeño cambio en menú para los estilos. [Edgar F. Fuentes Perea
  (EFP)]
- Se agregó Wizard Tag. [Marco Polo Perez Cervantes]
- Pequeño cambio en menú para los estilos. [Edgar F. Fuentes Perea
  (EFP)]
- Merge branch 'master' of ssh://github.com/efuentesp/riot-ui-prototype.
  [Edgar F. Fuentes Perea (EFP)]
- Modify select-box in order to have label description above options.
  [rmoctezumacstk]
- Se permite ahora en gitignore subir carpetas dist. [Edgar F. Fuentes
  Perea (EFP)]
- Add new component select-box and option-box to the prototype.
  [rmoctezumacstk]
- NodeJS version added to README file. [rmoctezumacstk]
- Versión con parte del CSS corregido. [Edgar F. Fuentes Perea (EFP)]
