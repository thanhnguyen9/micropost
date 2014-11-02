

$(document).ready(function() {

  // talk to the web

  $("button#hello").click(function() {
    $("ul#user").prepend("<li>Hello! <span class='clickable'>[ x ]</span> </li>");
    $("ul#webpage").prepend("<li>Hello there! <span class='clickable'>[ x ]</span> </li>");

    $("ul#user").children("li").click(function(){

      $(this).remove();
    });

     $("ul#webpage").children("li").first().click(function(){
       $(this).remove();
     });
  });

  $("button#goodbye").click(function() {
    $("ul#user").prepend("<li>Goodbye! <span class='clickable'>[ x ]</span> </li>");
    $("ul#webpage").prepend("<li>Goodbye, dear user! <span class='clickable'>[ x ]</span> </li>");

    $("ul#user").children("li").click(function(){

      $(this).remove();
    });

     $("ul#webpage").children("li").first().click(function(){
       $(this).remove();
     });

  });

  $("button#stop").click(function() {
    $("ul#user").prepend("<li>Stop copying me! <span class='clickable'>[ x ]</span> </li>");
    $("ul#webpage").prepend("<li>Haha <span class='clickable'>[ x ]</span> </li>");

    $("ul#user").children("li").click(function(){

      $(this).remove();
    });

     $("ul#webpage").children("li").first().click(function(){
       $(this).remove();
     });

  });





  // change background color



  $("button#background-green").click(function(){
    $("body").removeClass();
    $("body").addClass("green-background")
    $("body").addClass("blue-text")
  });

  $("button#background-yellow").click(function(){
    $("body").removeClass();
    $("body").addClass("yellow-background")
    $("body").addClass("red-text")
  });

  $("button#background-red").click(function(){
    $("body").removeClass();
    $("body").addClass("red-background")
    $("body").addClass("green-text")
  });

  // wrap pagraph in red border

  $(".border").click(function(){
    $("p").addClass("red-border")
    });

      // back to original
  $("button#original").click(function(){
    $("body").removeClass();
    $("body").addClass("original-background")
  });








  // jokes

  $("button#marriage-button").click(function(){
    $("#college").hide();
    $("#parent").hide();
    $("#cop").hide();
    $("#marriage").toggle();
    });

  $("button#college-button").click(function(){
    $("#marriage").hide();
    $("#parent").hide();
    $("#cop").hide();
    $("#college").toggle();
    });

  $("button#parent-button").click(function(){
    $("#marriage").hide();
    $("#college").hide();
    $("#cop").hide();
    $("#parent").toggle();
    });

  $("button#cop-button").click(function(){
    $("#marriage").hide();
    $("#college").hide();
    $("#parent").hide();
    $("#cop").toggle();
    });





    // adventure story
  $("#blank form").submit(function(event) {
    var person1Input = $("input#person1").val();
    var person2Input = $("input#person2").val();
    var animalInput= $("input#animal").val();
    var exclamationInput = $("input#exclamation").val();
    var verbInput = $("input#verb").val();
    var nounInput = $("input#noun").val();

    $(".person1").text(person1Input);
    $(".person2").text(person2Input);
    $(".animal").text(animalInput);
    $(".exclamation").text(exclamationInput);
    $(".verb").text(verbInput);
    $(".noun").text(nounInput);

    $("#story").show();

    event.preventDefault();
  });

});
