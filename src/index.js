'use strict'

if (module.hot) {
  module.hot.accept()
}

import riot from 'riot'
const $ = require('jquery');
window.$ = $;
window.jQuery = $;
require('popper.js')
require('gentelella/vendors/bootstrap/dist/js/bootstrap.min.js')
require('gentelella/vendors/nprogress/nprogress.js')
require('gentelella/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js')
require('gentelella/vendors/iCheck/icheck.js')
require('gentelella/vendors/fastclick/lib/fastclick.js')

// Hoja de estilos
import './styles/index.scss'

// Applicación
import './components/app/app.tag'

// Componentes comunes
import './components/common/layout/page.tag'
import './components/common/layout/content.tag'
import './components/common/layout/tablist.tag'
import './components/common/layout/accordion.tag'
import './components/common/layout/footer/footerbar.tag'
import './components/common/layout/header/topbar.tag'
import './components/common/layout/sidebar/menu-item.tag'
import './components/common/layout/sidebar/menu-section.tag'
import './components/common/layout/sidebar/side-menu.tag'
import './components/common/layout/sidebar/sidebar-menu.tag'
import './components/common/layout/sidebar/sidebar-profile.tag'
import './components/common/layout/sidebar/sidebar.tag'
import './components/common/form/raw.tag'
import './components/common/form/formbox.tag'
import './components/common/form/date-picker.tag'
import './components/common/form/date-time-picker.tag'
import './components/common/form/time-picker.tag'
import './components/common/form/select-auto.tag'
import './components/common/form/inputbox.tag'
import './components/common/form/search.tag'
import './components/common/form/panel.tag'
import './components/common/form/select-box.tag'
import './components/common/form/attach-photo.tag'
import './components/common/form/outputtext.tag'
import './components/common/form/progress-bar.tag'
import './components/common/form/note.tag'
import './components/common/form/login.tag'
import './components/common/form/pagination-bar.tag'
import './components/common/form/actions.tag'
import './components/common/form/action-group.tag'
import './components/common/form/action-button.tag'
import './components/common/form/option-matrix.tag'
import './components/common/form/bar-graph.tag'
import './components/common/form/counters.tag'
import './components/common/form/alert.tag'
import './components/common/form/checkbox.tag'
import './components/common/form/message.tag'
import './components/common/grid/row.tag'
import './components/common/grid/column.tag'

// Patrones Funcionales
import './components/patterns/crud/searchpanel.tag'
import './components/patterns/crud/edit-button.tag'
import './components/patterns/crud/delete-button.tag'
import './components/patterns/crud/submit-button.tag'
import './components/patterns/crud/table-results.tag'
import './components/patterns/crud/simple-admin.tag'
import './components/patterns/crud/select-list.tag'
import './components/patterns/crud/modal-box.tag'
import './components/patterns/wizard/form-wizard.tag'
import './components/patterns/wizard/step-wizard.tag'

// Menú: Demos
import './components/app/clienteEliminar.tag'
import './components/app/clienteAgregar.tag'
import './components/app/clienteEditar.tag'
import './components/app/clienteAdministrar.tag'
import './components/app/clienteWizard.tag'
import './components/app/cliente/cliente-admin.tag'
import './components/app/cliente/cliente-agregar.tag'
import './components/app/pedido/pedido-admin.tag'
import './components/app/pedido/pedido-agregar.tag'
import './components/app/pedido/pedido-agregar-paso-1.tag'
import './components/app/pedido/pedido-agregar-paso-2.tag'
import './components/app/pedido/pedido-agregar-paso-3.tag'

// Menú: IMSS
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso01.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso02.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso03.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso04.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso05.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso06.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso07.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso08.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso09.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-paso10.tag'
import './components/app/imss/pensiones/adp-f02-an-pig-01/registrar-pension-fin.tag'

// Menú: Banorte
import './components/app/banorte/arrendadora/01-cargos-ops/cargos-ops.tag'
import './components/app/banorte/arrendadora/05-cargos-ligados-contratos/cargos-ligados-contratos.tag'

// Menú: Kukulkán
import './components/app/kukulkan/vuelos/01-reservaciones/reservaciones.tag'

// Menú: Kukulkán Agencia
import './components/app/kukulkan-agencia/reservaciones-wizard.tag'
import './components/app/kukulkan-agencia/reservaciones-01.tag'
import './components/app/kukulkan-agencia/reservaciones-01-buscar.tag'
import './components/app/kukulkan-agencia/reservaciones-01-buscar-vuelo-seleccionado.tag'
import './components/app/kukulkan-agencia/reservaciones-02.tag'
import './components/app/kukulkan-agencia/reservaciones-03.tag'
import './components/app/kukulkan-agencia/reservaciones-04.tag'
import './components/app/kukulkan-agencia/reservaciones-01-consultar.tag'

// Componentes generados
import './components/app/clientetest/clientetest-add.tag'
import './components/app/clientetest/clientetest-admin.tag'
import './components/app/clientetest/clientetest-form.tag'

// Mandatory fields
import './components/app/mandatory-fields/mandatory-test.tag'

// Ejemplo dashboard
import './components/app/dashboard/dashboard.tag'

const msgs = require('json-loader!./default-messages.json')
var msgJSON = JSON.stringify(msgs)
localStorage.setItem('messages', msgJSON)

const config = require('json-loader!./config.json')
var precision = '2' // 2 is the default value
for (var k = 0; k < config.keys.length; k++) {
  var ks = config.keys[k]
  if (ks.key === 'precision') {
    precision = ks.value
    break
  }
}

localStorage.setItem('precision', precision)

const json = require('./tabledata.js')
var filenames = []
for (var j = 0; j < json.files.length; j++) {
  filenames[j] = (json.files[j].path)
  for (var c = 0; c < filenames[j].ids.length; c++) {
    localStorage.setItem('rows_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].rows))
    localStorage.setItem('header_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].headers))
    if (filenames[j].ids[c].actions !== 'undefined') {
      localStorage.setItem('actions_' + filenames[j].ids[c].id, JSON.stringify(filenames[j].ids[c].actions))
    }
  }
}

// Files
const softtekIconPath = require('./img/Softtek_1ink_SMALL.jpg')
localStorage.setItem('softtekIcon', softtekIconPath)

const pdfFirmaPatronPath = require('./img/FirmaPatron.pdf')
localStorage.setItem('firmaPatronPdf', pdfFirmaPatronPath)

require('riot-routehandler')
var routes = [
  { route: '/', tag: 'login' },
  { route: '/login/', tag: 'login' },
  { route: '/home/', tag: 'app' },
  { route: '/cliente-administrar/', tag: 'clienteadministrar' },
  { route: '/cliente-editar/', tag: 'clienteeditar' },
  { route: '/cliente-agregar/', tag: 'clienteagregar' },
  { route: '/cliente-eliminar/', tag: 'clienteeliminar' },
  { route: '/cliente-wizard/', tag: 'clientewizard' },
  { route: '/clientes-admin/', tag: 'cliente-admin' },
  { route: '/clientes-agregar/', tag: 'cliente-agregar' },
  { route: '/pedido-admin/', tag: 'pedido-admin' },
  { route: '/pedido-agregar/', tag: 'pedido-agregar' },
  { route: '/imss-registrar-pension/', tag: 'registrar-pension' },
  { route: '/imss-registrar-pension-fin/', tag: 'registrar-pension-fin' },
  { route: '/banorte-cargos-ops/', tag: 'cargos-ops' },
  { route: '/banorte-cargos-ligados-contratos/', tag: 'cargos-ligados-contratos' },
  { route: '/reservaciones/', tag: 'reservaciones' },
  { route: '/reservaciones-wizard/', tag: 'reservaciones-wizard' },
  { route: '/reservaciones-01-buscar/', tag: 'reservaciones-01-buscar' },
  { route: '/reservaciones-01-buscar-vuelo-seleccionado/', tag: 'reservaciones-01-buscar-vuelo-seleccionado' },
  { route: '/reservaciones-fin/', tag: 'reservaciones-fin' },
  { route: '/reservaciones-01-consultar/', tag: 'reservaciones-01-consultar' },
  { route: '/clientetest-add/', tag: 'clientetest-add' },
  { route: '/clientetest-admin/', tag: 'clientetest-admin' },
  { route: '/mandatory-test/', tag: 'mandatory-test' },
  { route: '/dashboard/', tag: 'dashboard' }
]
riot.mount('*', { routes: routes, options: { hashbang: true, params: { title: 'Login', username: 'Usuario', password: 'Contraseña', link: '//' } } })
