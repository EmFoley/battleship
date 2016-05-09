$(document).ready(function(){

  $("[rel='fire-missile']").on("click", function(evt){
    evt.preventDefault();

    $.ajax({
      url: 'take_shot',
      type: 'POST',
      dataType: 'json', 
      success: function(response){
        console.log(response);
      }
    });
    
  })

  
})