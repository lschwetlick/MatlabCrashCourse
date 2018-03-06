# Trial Listen Generieren (und Mehr zu Vektoren und Matrizen)

- Trial Listen als Matrizen mit einer Zeile pro Trial
## Hilfreiche Funktionen
### Manuell
- `[1,2,3]` - Horizontaler Vektor
- `[1;2;3]` - Vertikaler Vektor
- `[1,2;2,3;3,4]` - Matrize


### Generieren von Vektoren/Matrizen
- `1:5` - Vektor [1,2,3,4,5]
- `1:3:9` - Vektor 1-9 in 3er schritten
- `v'` - dreht den Vektor um 90°
- `zeros(x,y)` - macht eine x mal y Matrize voller nullen
- `ones(x,y)` - macht eine x mal y Matrize voller nullen. insbesondere `ones(x,y) * z` macht eine x mal y matrize voller z. 
- `repmat([1,2,3],1,2)` - wiederholt Vektor [1,2,3,1,2,3]
- `repelem([1,2,3],3)` - wiederholt jedes Element im Vektor [1,1,1,2,2,2,3,3,3]

### Information
- `length()` - länge eines Vektors
- `[x,y,z]=size(m)`- Größe einer Matrize. auch `size(m,1)` oder `size(m,2)` für nur Zeilen- oder nur Spaltenzahl.
- `ismember(4,[1,2,3])` - ist die Zahl 4 im Vektor 1,2,3? Bool/Logical

### Indizieren von Matrizen
```
m=magic(10);
m(1,2)
m(3,:)
m(:,2)
m(:,4:6)
m(:,[1,6,7])
```

### Zusammenfügen
- `horzcat(a,b)` - fügt Vektoren horizontal zusammen (muss selbe Zeilenzahl haben)
- `vertcat(a,b)` - fügt Vektoren vertikal zusammen (muss selbe Spaltenzahl haben)

### Random
- `randi(g,x,y)` - gibt random ints bis zur Größe g, mit x Zeilen und y Spalten
- `rand(x,y)` - gibt random Zahlen zwischen 0 und 1, mit x Zeilen und y Spalten
- `randperm(g)` - gibt eine zufällige Permutation der Werte 1 bis g
- um einen existierenden Vektor zu randomisieren, generiert man sich mit `randperm()` zufällige indices, und verwendet diese um den Originalvektor in die zufällige Ordnung zu bringen: `YourVector(randperm(length(YourVector))`
- Um trotz Randomisierung reproduzierbare Resultate zu bekommen kann man den 'seed' setzen: `rng(1234)`

# Hinweis
Die meisten einfachen Operationen die auf einzelnen Zahlen gehen, gehen auch mit Vektoren. Man muss also nicht über jedes Element iterieren um die ganze Liste mal 2 zu rechnen oder, um herauszufinden welche Elemente größer als 5 sind. 

