Feature: Wyszukiwanie i zakup produktu w sklepie internetowym Reserved

  Scenario: Użytkownik wyszukuje i kupuje produkt
    Given Użytkownik jest na stronie głównej sklepu Reserved
    When Użytkownik wpisuje "koszula" w pole wyszukiwania
    And Użytkownik klika przycisk "Szukaj"
    Then Użytkownik powinien zobaczyć listę produktów związanych z "koszula"

    When Użytkownik wybiera pierwszy produkt z listy
    Then Użytkownik powinien zobaczyć szczegóły produktu

    When Użytkownik klika przycisk "Dodaj do koszyka"
    Then Użytkownik powinien zobaczyć komunikat "Produkt został dodany do koszyka"

    When Użytkownik przechodzi do koszyka
    Then Użytkownik powinien zobaczyć dodany produkt w koszyku

    When Użytkownik klika przycisk "Przejdź do kasy"
    Then Użytkownik powinien zobaczyć formularz zamówienia

    When Użytkownik wypełnia formularz zamówienia
    And Użytkownik klika przycisk "Złóż zamówienie"
    Then Użytkownik powinien zobaczyć potwierdzenie zamówienia

  Scenario: Walidacja zakupu
    Given Użytkownik złożył zamówienie
    When Użytkownik sprawdza swój e-mail
    Then Użytkownik powinien otrzymać e-mail z potwierdzeniem zamówienia

    When Użytkownik loguje się na swoje konto
    And Użytkownik przechodzi do sekcji "Moje zamówienia"
    Then Użytkownik powinien zobaczyć szczegóły złożonego zamówienia