<dashboard>
	<page title="Visitas" id="ejemplo_dashboard">
	<panel label="Estadísticas">
		<counters>
			<row>
				<column size="col-md-3 col-xs-6">
					<counter value=3000 title="Usuarios totales" subtitle="Del mes pasado" icon="fa-user" type="positive" percentage="5"/>
				</column>
				<column size="col-md-3 col-xs-6">
					<counter value=100.7 title="Tiempo promedio de visita (en horas)" subtitle="Del mes pasado" icon="fa-clock-o" type="neutral" percentage="8"/>
				</column>
				<column size="col-md-3 col-xs-6">
					<counter value=2000 title="Visitas hechas por mujeres" subtitle="Del mes pasado" icon="fa-user" type="negative" percentage="5"/>
				</column>
				<column size="col-md-3 col-xs-6">
					<counter value=1000 title="Visitas hechas por hombres" subtitle="Del mes pasado" icon="fa-user" type="negative" percentage="8"/>
				</column>
			</row>
		</counters>
	</panel>
			<row>
				<column size="col-md-6 col-xs-12">
					<panel label="Visitas por mes">
						<bar-graph id="testChart">
						<labels>
							<label value="Enero"/>
							<label value="Febrero"/>
							<label value="Marzo"/>
							<label value="Abril"/>
							<label value="Mayo"/>
							<label value="Junio"/>
							<label value="Julio"/>
							<label value="Agosto"/>
							<label value="Septiembre"/>
							<label value="Octubre"/>
							<label value="Noviembre"/>
							<label value="Diciembre"/>
						</labels>
						<datasets>
							<dataset label="Visitas 2017" barcolor="#26B99A">
								<data value=4000/>
								<data value=1000/>
								<data value=2200/>
								<data value=4300/>
								<data value=5000/>
								<data value=500/>
								<data value=6000/>
								<data value=100/>
								<data value=300/>
								<data value=450/>
								<data value=980/>
								<data value=4000/>
							</dataset>
							<dataset label="Visitas 2018" barcolor="#03586A">
								<data value=6000/>
								<data value=5000/>
								<data value=1000/>
								<data value=1000/>
								<data value=500/>
								<data value=20/>
								<data value=4300/>
								<data value=5500/>
								<data value=1250/>
								<data value=46/>
								<data value=87/>
								<data value=6000/>
							</dataset>
							<dataset label="Visitas 2018" barcolor="#BF00FF">
								<data value=6000/>
								<data value=5000/>
								<data value=1000/>
								<data value=1000/>
								<data value=500/>
								<data value=20/>
								<data value=4300/>
								<data value=5500/>
								<data value=1250/>
								<data value=46/>
								<data value=87/>
								<data value=6000/>
							</dataset>
						</datasets>
					</bar-graph>
					</panel>
				</column>
				<column size="col-md-6 col-xs-12">
					<panel label="Desempeño de las campañas">
						<table-results id="campaign"/>
					</panel>
				</column>
			<row>
	</page>
</dashboard>