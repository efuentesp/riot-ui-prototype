<bar-graph>
	<div class="x_content">
		<canvas id={"graph" + opts.id}></canvas>
	</div>
	
	<yield/>
	
	<script>
		this.on('mount', function() {
			
			var labels = []
			var datasets = []
			
			if ( this.tags.labels && this.root.children[1].children ) {
				var labelList = this.root.children[1].children
				Object.keys(labelList).forEach(function(key) {
					if ( labelList[key].tagName.toLowerCase() == 'label' ) {
						labels.push(labelList[key].attributes.value.textContent)
					}
				})
			}
			
			if( this.tags.datasets && this.tags.datasets.tags.dataset ) {
				if(this.tags.datasets.tags.dataset.length){
					var d = this.tags.datasets.tags.dataset
					
					Object.keys(d).forEach(function(key) {
						var dataset = { label: '', backgroundColor: '', data: [] }
						var data = []
						
						dataset.label = d[key].opts.label
						dataset.backgroundColor = d[key].opts.barcolor
						
						if ( d[key].tags.data.length ){
							var dt = d[key].tags.data
							Object.keys(dt).forEach(function(key){
								data.push(dt[key].opts.value)
							})
						} else {
							data.push(d[key].tags.data.opts.value)
						}
						
						dataset.data = data
						datasets.push(dataset)
					})
				} else {
					var dataset = { label: '', backgroundColor: '', data: [] }
					var data = []
					
					dataset.label = this.tags.datasets.tags.dataset.opts.label
					dataset.backgroundColor =  this.tags.datasets.tags.dataset.opts.barcolor
					
					if ( this.tags.datasets.tags.dataset.tags.data.length ){
						var dt = this.tags.datasets.tags.dataset.tags.data
						Object.keys(dt).forEach(function(key){
							data.push(dt[key].opts.value)
						})
					} else {
						data.push(this.tags.datasets.tags.dataset.tags.data.opts.value)
					}
					
					dataset.data = data
					datasets.push(dataset)
				}
			}
			
			setTimeout(function(){
				setGraph(labels, datasets);
			}, 300);
		})
	
		function setGraph(l, d){
			
			var myData = {
				type: "bar",
				data: {
					labels: [],
					datasets: []
				},
				options: {
					scales: {
						yAxes: [{
							ticks: {
								beginAtZero: !0
							}
						}]
					}
				}
			}
			
			myData.data.labels = l
			myData.data.datasets = d
			
			var f = document.getElementById("graph" + opts.id);
			var myChart = new Chart(f, myData)
		}
	</script>
</bar-graph>

<labels>
	<yield/>
</labels>

<datasets>
	<yield/>
</datasets>

<dataset>
	<yield/>
</dataset>

<data>
</data>




