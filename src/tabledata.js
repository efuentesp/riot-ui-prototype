module.exports = {
  files: [
    { path: require('json-loader!./tabledata/clientespedidos.json') },
    { path: require('json-loader!./tabledata/clientesmtto.json') },
    { path: require('json-loader!./tabledata/clientesmttosimpleadmin.json') },
    { path: require('json-loader!./tabledata/imss.json') },
    { path: require('json-loader!./tabledata/banorte-arrendadora.json') },
    { path: require('json-loader!./tabledata/kukulkan-agencia.json') },
    { path: require('json-loader!./tabledata/modalclientetest.json') },
	{ path: require('json-loader!./tabledata/dashboard.json') }
  ]
}
