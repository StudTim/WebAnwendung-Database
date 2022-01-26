# Database
Diese Datenbank ist das geplante Backend für unsere Rest Schnittstelle instanziert wird diese mir Fake Patienten über ein SQL Script welches beim Builden des Dockers Containers mit ausgeführt wird

##Dockerfile
Die Dockerfile wird über die Compositions file ausgeführ und später zusammen mit unserem Rest Schnittstelle in einer Collection ausgeführt

Vorteile:
- Getrennte Docker in der Collection können unterschiedlich skalliert werden
- Kunde muss nur Container übergeben werden ohne extra SQL Scripte da diese bereits im Container gespeichert worden sind