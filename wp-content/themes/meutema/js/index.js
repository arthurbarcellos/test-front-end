var countEl = document.getElementById("count");

function mais() {
    countEl.value++;
}

function menos() {
    if(countEl.value > 1){
        countEl.value--;
    }
}

function myFunction(imgs) {
    var expandImg = document.getElementById("expandedImg");
    expandImg.src = imgs.src;
    expandImg.parentElement.style.display = "block";
}

jQuery(document).ready(function($){
    $(".card").slice(0, 3).show();
    $("#loadMore").on("click", function(e){
        e.preventDefault();
        
        if($(".card:hidden").length != 0) {
            $(".card:hidden").slice(0, 3).slideDown();
            $("#loadMore").text("ver menos");
        }
        else {
            $(".card:visible").slice(3, 6).slideUp();
            $("#loadMore").text("ver mais");
        }
    });

    //Pass data to modal
    $('#modal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) 
        var title = button.data('title') 
        var price = button.data('price')
        var description = button.data('description')
        var img1 = button.data('img1')
        var img2 = button.data('img2')
        var img3 = button.data('img3')
        var modal = $(this)
        modal.find('.modal-title').text(title)
        modal.find('.modal-price').text('R$'+price)
        modal.find('.modal-description').text(description)
        modal.find('.img-1').attr('src', img1)
        modal.find('.img-2').attr('src', img2)
        modal.find('.img-3').attr('src', img3)
        //zerar o contador
        countEl.value = 1;
    })

    // Add smooth scrolling to all links
    $(".up").on('click', function(event) {
      $('html, body').animate({scrollTop: 0}, 800);
    });

    $(document).ready(function(){
        // Add smooth scrolling to all links
        $(".nav-link, .produtos-link").on('click', function(event) {
          if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
              scrollTop: $(hash).offset().top - 200
            }, 800, function(){
              window.location.hash = hash -200;
            });
          }
        });
    });

});