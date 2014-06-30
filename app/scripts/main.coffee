interval = (t, f) -> window.setInterval(f,t)
timeout = (t, f) -> window.setTimeout(f,t)

bg_size = 147
bgc = 0
change = 1

# interval 2000, ->
#   bgc = 0 if bgc >= bg_size
#   bgc += change
#
#   $('body').css "background-position", "#{bg_size-bgc}px #{bgc}px"
  
comets = []

spawn_comet = () ->
  comet = $ "<div class='comet'></div>"
  comet_x = Math.random() * ($(window).width() + 200)
  comet_y = -1
  $('body').prepend comet
  comet.css
    top: comet_y++ + "px"
    left: comet_x-- + "px"
  comets.push comet

shower = ->
  interval 25, ->
    spawn_comet() if((comets.length < 6) and (.7 < Math.random() < .705))
    still_comets = []
    for comet, i in comets
      top = parseInt comet.css('top')
      left = parseInt comet.css('left')
      comet.css
        top: top+1 + 'px'
        left: left-1 + 'px'
      if left <= 0 then comet.remove() else still_comets.push comet
    comets = still_comets

window.spawn_comet = spawn_comet

# $ ->
#   shower()

