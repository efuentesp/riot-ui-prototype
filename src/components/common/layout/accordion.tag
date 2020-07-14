<accordion>
  <div class="accordion-container">
    <div class="x_panel">
        <div class="x_title card" id={ opts.id + "-heading" }>
          <h2>{ opts.title }</h2>
          <a data-toggle="collapse" data-target={ "#" + opts.id + "-collapse" } aria-expanded="false" aria-controls={ opts.id + "-collapse" } onclick={ changeIcon }>
            <i class="fa fa-chevron-down"/>
          </a>
          <br/>
        </div>
      
        <div class="collapse" id={ opts.id + "-collapse" }>
            <div class="card card-body">
              <yield/>
            </div>
        </div>
    </div>
  </div>

  <script>
    this.changeIcon = function(e){
      
      var isCollapsed = e.target.parentNode.ariaExpanded
      var icon =  e.target

      if (isCollapsed == "true" ){
        icon.className = "fa fa-chevron-down"
      } else {
        icon.className = "fa fa-chevron-up"
      }
    };
  </script>

  <style>
    .accordion-container a{
      float: right;
    }
  </style>

</accordion>