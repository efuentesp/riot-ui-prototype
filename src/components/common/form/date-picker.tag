<date-picker>
	<label if={ opts.required == 'true'}   for={opts.type}>{ opts.label}<font color="red"> *</font></label>
	<label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
	<fieldset>
		<div class="xdisplay_inputx form-group has-feedback" id={ opts.id } >
			<input type="text" placeholder={opts.placeholder} id={ "i-date-" + opts.id } class="form-control has-feedback-left" />
			<span class="fa fa-calendar-o form-control-feedback left">
				<span></span>
			</span>
		</div>
	</fieldset>

	<script>

		function setDatePicker(){
			var dpId = "#" +  opts.id;
			var dpDateFormat = "";
			if ( opts.format ) {
				dpDateFormat = opts.format
			} else {
				dpDateFormat = "dd/mm/yyyy"
			}
			showPicker(dpId, dpDateFormat, opts.mindate, opts.maxdate, opts.value);
		}

		this.on('mount', function() {
			setTimeout(function(){
				setDatePicker();
			}, 1000);
		})

		// This is when page is reloaded and refreshed
		this.on('update', function() {
			setDatePicker();
		})


		function showPicker(id, dateFormat, minDate, maxDate, value){

			var iDatePicker = document.getElementById("i-date-" + opts.id);

			$(id).datepicker({
				format: dateFormat,
				startDate: minDate,
				endDate: maxDate
			});

			if (value && ! iDatePicker.value){
				$(id).datepicker('setDate', value);
			}

			$(id).on('changeDate', function(ev){
				$(this).datepicker('hide');
			});
		}

	</script>

	<style>
		.form-control-feedback.left {
			left: 1px;
		}
	</style>
</date-picker>
