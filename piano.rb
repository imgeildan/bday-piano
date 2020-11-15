require 'ruby2d'

Text.new('Happy birthday song :) Press numbers on your keyboard!', color: 'yellow', x: 30, y: 30, size: 20, z: 1)
Text.new('1 1 2 1 4 3 pause 1 1 2 1 5 4 pause 1 1 8 6 4 4 3 2 pause 9 9 6 4 5 4', color: 'green', x: 10, y: 70, size: 20, z: 1)
Image.new('images/piano.png', x: 50, y: 215, width: 550, height: 180, size: 55, z: 1)
Text.new('Click to see your bday cake & card:)!', color: 'purple', x: 30, y: 450, size: 20, z: 1)
Text.new('or play piano...', color: 'maroon', x: 55, y: 180, size: 20, z: 1)
on :key_down do |event|
    case event.key
    when '1'
        Music.new('music/do.mp3').play
    when '2'
        Music.new('music/re.mp3').play
    when '3'
        Music.new('music/mi.mp3').play
    when '4'
        Music.new('music/fa.mp3').play
    when '5'
        Music.new('music/sol.mp3').play
    when '6'
        Music.new('music/la.mp3').play
    when '7'
        Music.new('music/si.mp3').play
    when '8'
        Music.new('music/octave_do.mp3').play
    when '9'
        Music.new('music/a#.mp3').play
    when 'e'
        exit
    end
end

on :mouse_down do |event|
    if event.button == :left && event.x >= 30 && event.x <= 370 && event.y <= 500 && event.y >= 450
        close
        clear
        set width: 750
        set height: 750
        tick = 0
        update do
            if tick % 60 == 0
                set background: 'random'
                if tick >= 800 && tick <= 1500
                    Image.new('images/ege.jpg', x: 350, y: 350, width: 400, height: 400)
                    Image.new('images/ege_2.jpg', width: 400, height: 400)
                end
                if tick >= 1500
                    Image.new('images/ege_imi.jpg',  x: 350, y: 350, width: 400, height: 400)
                    Image.new('images/ege_imi_at_enez.jpg', width: 400, height: 400)
                end
            end
            tick += 1
       end
       Text.new('Press any key from 1 to 9', color: 'purple', x: 480, y: 5)
       Text.new('to stop music', color: 'purple', x: 490, y: 25)
       Text.new('Type "e" to exit!', color: 'yellow', x: 5, y: 720)
       Image.new('images/bday_cake.jpg', x: 350, y: 350, width: 400, height: 400)
       Image.new('images/pokemon.jpg', width: 400, height: 400)
       Text.new('Happy bday Ege!! :)', color: 'blue', x: 430, y: 135, size: 40)
       Text.new(' My lovely nephew is 7 years old! <3', color: 'red', x: 10, y: 570)
       music = Music.new('music/happy_bday_song.mp3')
       music.loop = true
       music.play
       show
   end

    if event.button == :left && event.x >= 50 && event.x <= 85 && event.y <= 380 && event.y >= 215
        Music.new('music/do.mp3').play
    elsif event.button == :left && event.x >= 90 && event.x <= 125 && event.y <= 380 && event.y >= 215
        Music.new('music/re.mp3').play
    elsif event.button == :left && event.x >= 125 && event.x <= 160 && event.y <= 380 && event.y >= 215
        Music.new('music/mi.mp3').play
    elsif event.button == :left && event.x >= 165 && event.x <= 200 && event.y <= 380 && event.y >= 215
        Music.new('music/fa.mp3').play
    elsif event.button == :left && event.x >= 205 && event.x <= 240 && event.y <= 380 && event.y >= 215
        Music.new('music/sol.mp3').play
    elsif event.button == :left && event.x >= 245 && event.x <= 275 && event.y <= 380 && event.y >= 215
        Music.new('music/la.mp3').play
    elsif event.button == :left && event.x >= 275 && event.x <= 289 && event.y <= 360 && event.y >= 215
        Music.new('music/a#.mp3').play
    elsif event.button == :left && event.x >= 275 && event.x <= 310 && event.y <= 380 && event.y >= 215
        Music.new('music/si.mp3').play
    elsif event.button == :left && event.x >= 310 && event.x <= 355 && event.y <= 380 && event.y >= 215
        Music.new('music/octave_do.mp3').play
    end
end
show
