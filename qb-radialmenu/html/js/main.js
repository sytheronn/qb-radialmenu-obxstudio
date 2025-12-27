'use strict';

var QBRadialMenu = null;

$(document).ready(function(){
    window.addEventListener('message', function(event){
        switch (event.data.action) {
            case "ui":
                if (event.data.radial) {
                    createMenu(event.data.items)
                    QBRadialMenu.open();
                    
                   
                    $("#menuLogo").addClass("active");
                } else {
                    QBRadialMenu.close(true);
                    
                  
                    $("#menuLogo").removeClass("active");
                
                    $("#radialTitle").removeClass("active").text("");
                }
        }
    });
});

function createMenu(items) {
    QBRadialMenu = new RadialMenu({
        parent      : document.body,
        size        : 375,
        menuItems   : items,
        onClick     : function(item) {
            if (item.shouldClose) {
                QBRadialMenu.close(true);
             
                $("#menuLogo").removeClass("active");
                $("#radialTitle").removeClass("active").text(""); 
            }
            
            if (item.items == null && item.shouldClose != null) {
                $.post('https://qb-radialmenu/selectItem', JSON.stringify({
                    itemData: item
                }))
            }
        }
    });
}


$(document).on('keydown', function(e) {
    switch(e.key) {
        case "Escape":
            QBRadialMenu.close();
          
            $("#menuLogo").removeClass("active");
            $("#radialTitle").removeClass("active").text("");
            break;
    }
});


$(document).on('keyup', function(e) {
    QBRadialMenu.close();
   
    $("#menuLogo").removeClass("active");
    
  
    $("#radialTitle").removeClass("active").text(""); 
});



var switchTimer = null;
var leaveTimer = null;


$(document).on('mouseenter', 'g.sector', function() {
    var menuText = $(this).find('text').text();
    var $title = $("#radialTitle");

    
    clearTimeout(leaveTimer);

    if (menuText) {
        
        if ($title.hasClass("active")) {
            
            
            if ($title.text() === menuText) return;

          
            clearTimeout(switchTimer);

           
            $title.addClass("switching");

           
            switchTimer = setTimeout(function() {
                $title.text(menuText);
                $title.removeClass("switching");
            }, 150);

        } else {
       
            $title.text(menuText).removeClass("switching");
            
         
            setTimeout(function(){
                $title.addClass("active");
            }, 10);
        }
    }
});


$(document).on('mouseleave', 'g.sector', function() {
    var $title = $("#radialTitle");

   
    leaveTimer = setTimeout(function() {
        $title.removeClass("active switching");
        
    
        setTimeout(function(){
            if (!$title.hasClass("active")) {
                $title.text(""); 
            }
        }, 300);
    }, 50);
});