var pageX=$(document).width(),pageY=$(document).height(),mouseY=0,mouseX=0;$(document).mousemove(function(e){mouseY=e.pageY,yAxis=(pageY/2-mouseY)/pageY*300,mouseX=e.pageX/-pageX,xAxis=100*-mouseX-100,$(".box__ghost-eyes").css({transform:"translate("+xAxis+"%,-"+yAxis+"%)"})});