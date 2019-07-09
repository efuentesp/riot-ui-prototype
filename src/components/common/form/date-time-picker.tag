<date-time-picker>
	<label if={ opts.required == 'true'}   for={opts.type}>{ opts.label}<font color="red"> *</font></label>
	<label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
	   <div class='input-group date' id={opts.id+"dt"}>
            <input type='text' class="form-control" />
            <span class="input-group-addon"  >
                <span class="glyphicon glyphicon-calendar"></span>
            </span>
       </div>
    <script>
        function setTimePicker(){
            var idt =  '#'+ opts.id + "dt";
            $(function () {
                $(idt).datetimepicker();
            });
        }

        this.on('mount', function() {
            setTimeout(function(){
				setTimePicker();
			}, 100);
            
		})
    </script>
</date-time-picker>
