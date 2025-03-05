Feature: Validación de funcionalidad de la aplicación de fotografía y reproductor multimedia

  Scenario: Capturar una foto con la cámara
    Given la aplicación está abierta
    When el usuario presiona el botón de captura
    Then la aplicación guarda la imagen en la galería

  Scenario: Ver una foto guardada
    Given el usuario tiene fotos guardadas en la galería
    When el usuario selecciona una foto desde la aplicación
    Then la aplicación muestra la imagen en pantalla

  Scenario: Reproducir un archivo de audio
    Given el usuario ha seleccionado un archivo de audio
    When el usuario presiona el botón de reproducción
    Then la aplicación comienza a reproducir el audio

  Scenario: Pausar la reproducción de audio
    Given el usuario está reproduciendo un archivo de audio
    When el usuario presiona el botón de pausa
    Then la reproducción se detiene

  Scenario: Eliminar una foto de la galería
    Given el usuario tiene fotos guardadas en la galería
    When el usuario selecciona una foto y presiona eliminar
    Then la foto se elimina de la galería

  Scenario: Verificar que la aplicación no se cierra inesperadamente
    Given el usuario está utilizando la aplicación
    When el usuario cambia entre la cámara y el reproductor
    Then la aplicación sigue funcionando sin errores
