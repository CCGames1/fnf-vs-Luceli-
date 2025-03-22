
function onCreate()
    -- Cargar el fondo
    makeLuaSprite('background', 'data/images/background_luceli.png', 0, 0)
    addLuaSprite('background', false)

    -- Definir la música
    makeSound('song1', 'data/songs/luceli_song.ogg')

    -- Crear a los personajes
    makeCharacter('bf', 'data/characters/boyfriend', 350, 450) -- Boyfriend
    makeCharacter('gf', 'data/characters/girlfriend', 800, 450) -- Girlfriend
    makeCharacter('luceli', 'data/characters/luceli', 600, 450) -- Luceli

    -- Iniciar la música
    playSound('song1')
end

function onSongStart()
    -- Mostrar los personajes al iniciar la canción
    setProperty('gf.visible', true) -- Mostrar a la novia
    setProperty('luceli.visible', true) -- Mostrar a Luceli
end

function onUpdate()
    -- Aquí puedes agregar actualizaciones de lógica, si es necesario.
end

function onBeatHit()
    -- Cambiar la animación del personaje Boyfriend
    if curBeat % 2 == 0 then
        objectPlayAnimation('bf', 'sing1', true)
    else
        objectPlayAnimation('bf', 'sing2', true)
    end
end

function onStepHit()
    -- Puedes agregar más lógica aquí si lo necesitas
end
