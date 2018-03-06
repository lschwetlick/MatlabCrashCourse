# Funktionen

- Idealerweise: Alle benötigten Werte gehen rein, der gewollte Wert kommt raus, wie in der Mathematik
    - eine Funktion kennt nichts, was man ihr nicht als input gibt (scope)
- Matlabs vorgegebene Funktionen zB `length()`, `sqrt()`, ect.
- Selbst definierte Funktionen:
1. Neues File Aufmachen
2. Speichern als FunctionName.m
3. Funktions syntax:
```
%Function File
function [outputArg1,outputArg2] = DoubleMe(inputArg1,inputArg2)
outputArg1 = inputArg1*2;
outputArg2 = inputArg2*2;
end
```
4. Die Funktion muss im searchpath des Programms liegen `addpath(genpath('path/to/program/dir'))`. Achtung: Bei windows backslash `\`, bei anderen foreward slash `/`
5. Dann einfach beim Namen Rufen
``` 
% Program
[a,b]=DoubleMe(2,5)
```
### Jede Regel hat ihre Ausnahmen
- manche Funktionen haben keinen Output, zB eine die in der PTB den Instruktionstext anzeigt. Sie verändern den Status des Displays.
- manche Funktionen haben keinen Input.  zB. manchmal verwendet man Funktionen die eigentlich nur als lesbarer Parameterspeicher dienen. Dafür verwendet man sonst auch gerne Objekte