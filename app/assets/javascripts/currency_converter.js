$(document).ready(function() {
  var rate = 0.0;
  var base = $("#base");
  var rates= $("#rates");
  var fromAmount = $("#from_amount");
  var toAmount = $("#to_amount");
  var  button = $('#get_conversion_rate');

  var getConversionRate = function(){
      $.post('/publics',{
          base : base.val(),
          rates : rates.val()
        },function(data) {
          rate = data;
          toAmount.val(fromAmount.val()*rate);
     });

  };

  var initializer = function(){
    button.click(getConversionRate); 
   };
  initializer();
});