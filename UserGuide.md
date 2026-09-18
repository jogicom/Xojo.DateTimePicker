**Parameter WTEC_DateTimePicker**

| Property                    | Default | Beschreibung  |
| :---                        | :---: | :--- |
| **AutoCollapse**            | True              | True = nach Anwahl eines Datums wird der Kalender automatisch geschlossen |
| **AutoCollapseOnMouseExit** | False             | True = sobald der Mauszeiger den Kalender verlässt, wird er automatisch geschlossen |
| **EnableWheel**             | True              | True = Datumsfelder können auch mit dem Mausrad geändert werden    |
| **EnableAutoPosition**      | false             | True = wenn der Kalender durch das Parent Window beschnitten wird, versucht der Kalender automatisch durch neu Positionieren das auszugleichen |
| **FirstWeekDay**            | Monday            | Hier kann über die Aufzählung WTEC_DateTimePicker.FirstWeekDays der Wochenbeginn festgelegt werden |
| **Fontname**                | System            | Im Kalender verwendeter Font |
| **FontSize**                | 0                 | Im Kalender verwendete Fontgrösse |
| **FontUnit**                | FontUnits.Default | Im Kalender verwendete FontUnit |
| **ForceLocale**             |                   | Hiermit kann im Kalender eine vom System abweichende Sprache erzwungen werden, Beispiel "en-US"
| **HMarginDayNumbers**       | 5                 | Der horizontale Abstand zwischen den Kalendertagen |
| **VMarginDayNumbers**       | 5                 | Der vertikale Abstand zwischen den Kalendertagen |
| **HMargin_CalendarWindow**  | 5                 | Der horizontale Abstand der Controls zueinander |
| **VMargin_CalendarWindow**  | 5                 | Der vertikale Abstand der Controls zueinander |
| **ViewMode**                | DateOnly          | Der Anzeige Modus des Kalenders: <br> **DateOnly:** Es kann nur ein Datum geändert werden <br> **DateAndTime:** Zusätzlich zum Datum können Stunden und Minuten erfasst werden<br> **DateAndSeconds:** Zusätlich können auch Sekunden Angaben gemacht werden<br> **Hinweis:** Das Feld muss dann natürlich von der Grösse her, die Daten auch darstellen können.|

---

**Events WTEC_DateTimePicker**

| Event   |  Beschreibung  |
| :---    |  :--- |
|CalendarClosed(date as DateTime, IsChanged as boolean) |  Der Kalender wurde geschlossen <br> **date** das im Kalender ausgewählte Datum/Zeit<br> **IsChanged** = True = Das Datum oder Uhrzeit wurde seit dem setzen geändert |
| DateChanged(year as integer, month as integer, day as integer) | Das Datum wurde geändert, dieser Event kommt bei jeder Änderung des Datums |
| InitialDate() As Datetime | Der Kalender fragt das Datum/Uhrzeit ab, mit dem er initalisiert werden soll |
| TimeChanged(hour as integer, minute as integer, seconds as integer) | Die Uhrzeit wurde geändert, dieser Event kommt bei jeder Änderung der Uhrzeit |


---

**Methods WTEC_DateTimePicker**

| Method   |Beschreibung  |
| :---    | :---: |
| SetDate(year as integer, month as integer, day as integer) | Setzen eines bestimmten Datums im Kalender, durch die Hauptanwendung |
| SetTime(hour as integer, minute as integer, second as integer) | Setzen einer bestimmten Uhrzeit im Kalender, durch die Hauptanwendung |
| SetDateTime(d as Datetime) | Setzen eines bestimmten Datums und der Uhrzeit im Kalender, durch die Hauptanwendung |


