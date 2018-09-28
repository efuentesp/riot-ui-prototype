<counters>
	<div class="tile_count">
		<yield/>
	</div>
</counters>

<counter>
	<div class="tile_stats_count">
	  <span class="count_top"><i class={ "fa " + opts.icon }></i> { opts.title }</span>
	  <div class="count">{opts.value}</div>
	  <span class="count_bottom" if={ opts.type == 'positive' }><i class="green"><i class="fa fa-sort-asc"></i>{ opts.percentage }% </i> { opts.subtitle }</span>
	  <span class="count_bottom" if={ opts.type == 'negative' }><i class="red"><i class="fa fa-sort-desc"></i>{ opts.percentage }% </i> { opts.subtitle }</span>
	  <span class="count_bottom" if={ opts.type == 'neutral' }><i class="green">{ opts.percentage }% </i> { opts.subtitle }</span>
	</div>
</counter>