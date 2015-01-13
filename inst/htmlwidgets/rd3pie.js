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

var pie = null;
function create() {
  if (el.hasChildNodes()) {
//  alert(el.hasChildNodes());
    while (el.firstChild) {
      el.removeChild(el.firstChild);
    }
  }
//  alert(isEmpty(el.textContent));
  pie = new d3pie(el.id, x );
}


$(function() {
  if (pie !== null) {
    pie.destroy();
    pie = null;
  }

  create();


});
},





  resize: function(el, width, height, instance) {

  }

});
