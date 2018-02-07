'use strict'

if (module.hot) {
  module.hot.accept()
}

import riot from 'riot'
import './styles/index.scss'

import './components/app.tag'
import './components/page.tag'
import './components/formbox.tag'
import './components/inputbox.tag'
import './components/search.tag'
import './components/sidebar.tag'
import './components/topbar.tag'
import './components/footerbar.tag'
import './components/searchpanel.tag'
import './components/content.tag'
import './components/panel.tag'
import './components/clienteEliminar.tag'
import './components/clienteAgregar.tag'
import './components/clienteEditar.tag'
import './components/clienteAdministrar.tag'
import './components/menu-item.tag'
import './components/edit-button.tag'
import './components/delete-button.tag'
import './components/submit-button.tag'
import './components/menu-section.tag'
import './components/side-menu.tag'
import './components/sidebar-menu.tag'
import './components/sidebar-profile.tag'
import './components/select-box.tag'
import './components/option-box.tag'
import './components/form-wizard.tag'
import './components/step-wizard.tag'
import './components/clienteWizard.tag'
import './components/date-picker.tag'
import './components/row.tag'
import './components/column.tag'
const json = require('./tabledata.js')
for (var i = 0; i < json.ids.length; i++) {
  var js = json.ids[i]
  localStorage.setItem('rows_' + js[i].id, JSON.stringify(js[i].rows))
  localStorage.setItem('header_' + js[i].id, JSON.stringify(js[i].headers))
}
riot.mount('*')
