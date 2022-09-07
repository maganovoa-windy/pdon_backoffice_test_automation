
Feature: Crear nueva Campaña

  Scenario Outline:  Crear nueva campaña desde el boton <btn_campaña_head>

    Given estoy logueado en BackOffice
    When hago click en el botón <btn_campaña_head>
    And selecciono el pais <pais> del desplegable
    And ingreso el nombre de la ONG <nombre_ong>
    And hago click en el botón "Cargar Archivo"
    And cargo el archivo de imagen "pruebaONG.jpg"
    And ingreso el codigo de la ONG <codigo_ong>
    And hago click en boton <btn_continuar>
    And hago click en el botón "Cargar Archivo" de imagen de campaña
    And cargo el archivo de imagen ""
    And ingreso el titulo de la campaña <tit_campaña>
    And ingreso una descripcion de la campaña <desc_campaña>
    And ingreso una fecha inicio de campaña <fecha_ini>
    And ingreso una fecha fin de campaña <fecha_fin>
    And hago click en boton <btn_continuar_2>
    And ingreso el primer valor <monto>, primer equivalencia <equiv> y primer descripción <desc>
    And selecciono el boton "Crear Campaña"
    Then se visualiza la nueva campaña en el listado de campañas del inicio

    Examples:
      |btn_campaña_head	| pais		|nombre_ong	|codigo_ong	|btn_continuar	|tit_campaña|desc_campaña		|fecha_ini	|fecha_fin	|btn_continuar_2	|monto	|equiv	|desc			|
      |Nueva Campaña		|Argentina	|ONG 1		|123456		|Continuar		|Campaña 1	|Prueba de campaña	|23/08/2022	|23/08/2023	|					|50		|1		|vaso de agua	|

  Scenario Outline:  Crear nueva campaña desde el boton <btn_campaña_list>

    Given estoy logueado en BackOffice
    When hago click en el botón <btn_campaña_list>
    And selecciono el pais <pais> del desplegable
    And ingreso el nombre de la ONG <nombre_ong>
    And hago click en el botón "Cargar Archivo"
    And cargo el archivo de imagen "pruebaONG.jpg"
    And ingreso el codigo de la ONG <codigo_ong>
    And hago click en boton <btn_continuar>
    And hago click en el botón "Cargar Archivo" de imagen de campaña
    And cargo el archivo de imagen ""
    And ingreso el titulo de la campaña <tit_campaña>
    And ingreso una descripcion de la campaña <desc_campaña>
    And ingreso una fecha inicio de campaña <fecha_ini>
    And ingreso una fecha fin de campaña <fecha_fin>
    And hago click en boton <btn_continuar_2>
    And ingreso el primer valor <monto>, primer equivalencia <equiv> y primer descripción <desc>
    And selecciono el boton "Crear Campaña"
    Then se visualiza la nueva campaña en el listado de campañas del inicio

    Examples:
      |btn_campaña_list	| pais		|nombre_ong	|codigo_ong	|btn_continuar	|tit_campaña|desc_campaña		|fecha_ini	|fecha_fin	|btn_continuar_2	|monto	|equiv	|desc			|
      |Nueva Campaña		|Argentina	|ONG 1		|123456		|Continuar		|Campaña 1	|Prueba de campaña	|23/08/2022	|23/08/2023	|					|50		|1		|vaso de agua	|





  Scenario Outline:  Seleccionar <pais> en desplegable Pais

    Given estoy logueado en BackOffice
    When hago click en el botón "Nueva Campaña"
    And selecciono el pais <pais> del desplegable
    Then se muestra el pais seleccionado

    Examples:
      | pais		|
      |Argentina	|
      |Chile		|
      |Colombia	|
      |Uruguay	|


  Scenario:  Cargar archivo de Logo ONG

    Given estoy logueado en BackOffice
    When hago click en el botón "Nueva Campaña"
    And hago click en el botón "Cargar Archivo"
    And cargo el archivo de imagen "pruebaONG.jpg"
    Then se verifica la correcta carga de la imagen


  Scenario Outline:  Cargar archivo de Imagen de Campaña

    Given estoy logueado en BackOffice
    When hago click en el botón "Nueva Campaña"
    And selecciono el pais <pais> del desplegable
    And ingreso el nombre de la ONG <nombre_ong>
    And hago click en el botón "Cargar Archivo"
    And cargo el archivo de imagen "pruebaONG.jpg"
    And ingreso el codigo de la ONG <codigo_ong>
    And hago click en boton <btn_continuar>
    And hago click en el botón "Cargar Archivo" de imagen de campaña
    And cargo el archivo de imagen ""
    Then se verifica la correcta carga de la imagen

    Examples:
      | pais		|nombre_ong	|codigo_ong	|btn_continuar	|
      |Argentina	|ONG 1		|123456		|Continuar		|


  Scenario:  Validar funcionamiento boton <btn_cancelar>

    Given estoy logueado en BackOffice
    When hago click en el botón "Nueva Campaña"
    And selecciono el pais <pais> del desplegable
    And ingreso el nombre de la ONG <nombre_ong>
    And hago click en el botón "Cargar Archivo"
    And cargo el archivo de imagen "pruebaONG.jpg"
    And ingreso el codigo de la ONG <codigo_ong>
    And hago click en boton <btn_cancelar>
    Then regreso a la pantalla de inicio

    Examples:
      | pais		|nombre_ong	|codigo_ong	|btn_cancelar	|
      |Argentina	|ONG 1		|123456		|Cancelar		|
