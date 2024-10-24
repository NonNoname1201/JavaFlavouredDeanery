# System zarządzania magazynem sklepu elektronicznego

## Opis:
System polega na kontrolowaniu stanu magazynu elektronicznego, zapewniając bezpieczeństwo przed oszukiwaniem przez pracowników. Dodatkowo system ułatwia przeliczenie stanu magazynu.

## Hierarchia użytkowników:
1. Kierownik
2. Pracownik

## Funkcjonalności:

### Disclaimer:
W punkatach, gdzie jest napisane _kierownik_ oznacza to, że tylko kierownik ma dostęp do tej funkcjonalności.
Gdy nie jest napisane _kierownik_ to oznacza to, że zarówno kierownik jak i pracownik mają dostęp do tej funkcjonalności.

### Zarządzanie użytkownikami:
1. Logowanie
2. Dodawanie nowych użytkowników - _kierownik_
3. Usuwanie użytkowników - _kierownik_

### Zarządzanie produktami:
1. Dodawanie nowych produktów - _kierownik_
2. Edycja informacji o produkcie - _kierownik np. zmiana ceny, nazwy_
3. Usuwanie produktów - _kierownik_
4. Tworzenie zamówień dla klientów
5. Zamówienie produktów - _kierownik_

### Zarządzanie stanem magazynu:
1. Przeglądanie stanu magazynu
2. Wysyłanie powiadomień do kierownika przez e-mail, gdy poziom zapasów jest niski.
3. Generowanie raportu o stanie magazynu
4. Importowanie i eksportowanie stanu magazynu - _kierownik_
5. Przeliczenie stanu magazynu - _kierownik_