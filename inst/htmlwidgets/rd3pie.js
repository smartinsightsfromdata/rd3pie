HTMLWidgets.widget({

  name: 'rd3pie',

  type: 'output',

  initialize: function(el, width, height) {


    return {
  //   pie: pie
      // TODO: add instance fields as required
    }

  },

  renderValue: function(el, x, instance) {
 //   console.log(el);
 //   console.log('x =' +JSON.stringify(x));

   var pie = new d3pie(el.id, x );

  $(function() {
  	$("#refreshBtn").on("click", function(e) {
			pie.redraw();
		});
	});
},





  resize: function(el, width, height, instance) {

  }

});
