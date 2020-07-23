<checkbox>
  <div class="form-group" if={ !opts.orientation || opts.orientation == "vertical" }>
    <label if={ opts.required == 'true'}   for={opts.type}>{ opts.label }<font color="red"> *</font></label>
    <label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
    <div>
      <input id={opts.id+"chkbool"} if={ opts.checked == 'true'} type="checkbox" class="js-switch" checked="" data-switchery="true" style="display: none;">
      <input id={opts.id+"chkbool"} if={ opts.checked == 'false' || !opts.checked } type="checkbox" class="js-switch" data-switchery="true" style="display: none;">
    </div>
  </div>
  <div class="form-group row" if={ opts.orientation == "horizontal" }>
    <label class="control-label col-md-1 col-sm-1" if={ opts.required == 'true'}   for={opts.type}>{ opts.label }<font color="red"> *</font></label>
    <label class="control-label col-md-1 col-sm-1" if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>

    <div class="col-md-11 col-sm-11">
      <input id={opts.id+"chkbool"} if={ opts.checked == 'true'} type="checkbox" class="js-switch" checked="" data-switchery="true" style="display: none;">
      <input id={opts.id+"chkbool"} if={ opts.checked == 'false' || !opts.checked } type="checkbox" class="js-switch" data-switchery="true" style="display: none;">
    </div>
  </div>
</checkbox>