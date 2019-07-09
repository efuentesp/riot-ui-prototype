<time-picker>
	<label if={ opts.required == 'true'}   for={opts.type}>{ opts.label}<font color="red"> *</font></label>
	<label if={ opts.required == 'false' || ( ! opts.required && opts.label ) } for={opts.type}>{ opts.label }</label>
	<div class="calendar-time" id={opts.id+"time"}>
      <div>
       <select class="hourselect">
         <option value="1">1</option>
         <option value="2">2</option>
         <option value="3">3</option>
         <option value="4">4</option>
         <option value="5">5</option>
         <option value="6">6</option>
         <option value="7">7</option>
         <option value="8">8</option>
         <option value="9">9</option>
         <option value="10">10</option>
         <option value="11">11</option>
         <option value="12" selected="selected">12</option>
       </select> : 
       <select class="minuteselect">
         <option value="0" selected="selected">00</option>
         <option value="05">05</option>
         <option value="10">10</option>
         <option value="15">15</option>
         <option value="20">20</option>
         <option value="25">25</option>
         <option value="30">30</option>
         <option value="35">35</option>
         <option value="40">40</option>
         <option value="45">45</option>
         <option value="50">50</option>
         <option value="55">55</option>
       </select> 
       <select class="ampmselect">
         <option value="AM" selected="selected">AM</option>
         <option value="PM">PM</option>
       </select>
      </div>
  </div>
</time-picker>