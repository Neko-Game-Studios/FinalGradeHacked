# Final Grade: Hacked

## Überblick
Dies ist ein interaktives Text-Adventure, das mit React, TypeScript und Tailwind CSS erstellt wurde. Das Spiel folgt einem Schüler, der versucht, seine Noten auf verschiedene Weise zu verbessern – vom Lernen bis zum Einbruch in die Systeme der Schule.

## Funktionen
- Interaktives Storytelling mit mehreren Pfaden und Enden
- Entscheidungsbasiertes Gameplay mit Konsequenzen
- Simulation einer Terminal-Oberfläche mit Passwort-Cracking
- Herausforderung des Anmeldesystems
- Moderne und responsive Benutzeroberfläche mit benutzerdefinierten Animationen
- Lokaler Speicher für die Persistenz des Spielstands

## Verwendete Technologien
- React
- TypeScript
- Tailwind CSS
- Vite Build-System
- React Router für die Navigation

## Projektstruktur
```
/
├── src/                    # Quellcode
│   ├── sites/              # Spielbildschirme/Seiten
│   │   ├── anleitung.tsx   # Anweisungen
│   │   ├── App.tsx         # Hauptkomponente der App
│   │   ├── cheat.tsx       # Bildschirm zur Cheat-Erkennung
│   │   ├── einbruch.tsx    # Einbruchszenario
│   │   ├── ende.tsx        # Spielende
│   │   ├── first.tsx       # Erste Entscheidungen
│   │   ├── gameover.tsx    # Game Over-Bildschirm
│   │   └── terminal.tsx    # Terminal-Hacking-Oberfläche
│   ├── global.ts           # Globaler Spielstatus
│   ├── index.css           # Globale Stile
│   └── main.tsx            # Einstiegspunkt der App
├── index.html              # HTML-Einstiegspunkt
└── package.json            # Projektabhängigkeiten
```

## Spielfluss
1. Startbildschirm mit Spieltitel
2. Anleitungsbildschirm, der das Spiel erklärt
3. Bildschirm für die erste Wahl mit mehreren Optionen
4. Verschiedene Pfade, abhängig von den Entscheidungen:
   - Lernen
   - Lehrer bestechen
   - Hacken
   - Einbrechen
5. Terminal mit:
   - Bruteforce-Passwortsimulation
   - Herausforderung der Admin-Anmeldung
6. Erfolgs- oder Game Over-Bildschirm

## Einrichtung & Bereitstellung

### Lokale Entwicklung
1. Klonen Sie das Repo
2. Installieren Sie die Abhängigkeiten:
   ```
   bun install
   ```
3. Starten Sie den dev server:
   ```
   bun run dev
   ```
4. Öffnen Sie Ihren Browser unter `http://localhost:5173`

### Zu HTML/JS/CSS
1. Erstellen Sie das Projekt:
   ```
   bun run build
   ```
2. Die Build-Ausgabe befindet sich im Verzeichnis `build`

### Hosting
Zur Bereitstellung auf einem Webserver:
1. Laden Sie den Inhalt des Verzeichnisses `build` unter dem Verzeichnis `/txtadv` auf Ihren Webserver hoch
2. Greifen Sie auf das Spiel unter `http://Ihr-Server.com/txtadv/` zu

## Credits
- Entwicklung: Jonathan S. und Julius B.
- Story: Jonathan S. und Julius B.
- Design: Jonathan S. und Julius B.