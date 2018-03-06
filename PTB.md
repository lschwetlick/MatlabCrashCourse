# Psychtoolbox
## Vorbereiten
```
PsychDefaultSetup(2);
Screen('Preference', 'SkipSyncTests', 1);
% screens = Screen('Screens')
screenNumber = 0;
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, [1,1,1]);
```
- man kann auch ein kleineres Fenster öffnen `[window, windowRect] = PsychImaging('OpenWindow', screenNumber, [1,1,1], rect);`
- rect ist immer ein Vektor mit 4 Koordinaten [linksObenX, linksObenY, rechtsUntenX, rechtsUntenY]. Die Zahlen beziehen sich auf Pixelwerte auf dem Bildschirm.
- manchmal hilft es die Mitte des rects auf einen Punkt zu schieben `newRect = CenterRectOnPoint(rect,x,y)`

## Präsentieren
Mit den folgenden befehlen wird bestimmt was gemalt wird gemalt. Mit dem Befehl `Screen('Flip', window);` wird es ausgeführt
- `Screen('FillRect', window, bgCol);` wird der Bildschirm geleert (Bildschirm mit nur der Farbe bgCol)
- `Screen('FillRect', window, [,color] [,rect]);` ein rechteck der größe rect
- `DrawFormattedText(window, 'Text', 'center', 100);` Schriftzug
- `Screen('FillOval', windowPtr [,color] [,rect] ); ` Oval
- ... weitere http://docs.psychtoolbox.org/Screen 
- Für Fotos muss erst eine Textur generiert werden:
```
    img= imread('imgname.jpg');
    imageTexture = Screen('MakeTexture', window, img);
    Screen('DrawTexture', window, imageTexture);
    Screen('Flip', window);
```
Nach einem Flip wird typischerweise gewartet:
- `KbWait()` wartet auf Tastendruck
- `WaitSecs(x)` wartet x Sekunden
- Food for Thought: Wenn man nur kurze Wartedauern einbaut und mit einem loop Elemente immer um einige pixel verschiebt kann man damit Animationen programmieren

## Präsentieren
- `sca` Fenster Schließen