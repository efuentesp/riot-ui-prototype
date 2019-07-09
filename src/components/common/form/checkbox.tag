<checkbox>
  <label if={ opts.required == 'true'}   for={opts.type}>{ opts.label}<font color="red"> *</font></label>
  <label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
  
   <label id={opts.id+"chkbool"} if={ opts.checked == 'true'}>
    <input type="checkbox" class="js-switch" checked="" data-switchery="true" style="display: none;">
   </label>
   <label id={opts.id+"chkbool"} if={ opts.checked == 'false' || !opts.checked} >
    <input type="checkbox" class="js-switch" data-switchery="true" style="display: none;">
   </label>
</checkbox>