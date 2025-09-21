# hotels_bookings
Пет-проект по созданию базы данных путешествий.
# О проекте
Небольшая учебно-прикладная БД "Hotels Booking" для моделирования работы отельной сети: отели, типы номеров, номера, гости, бронирования (с историзацией ключевых полей по схеме SCD-3) и платежи. Проект демонстрирует:
нормализацию до 3НФ;
целостность через внешние ключи и проверочные ограничения (CHECK);
производительность через индексы и деривативные поля (nights) и триггер для SCD-3.

# Ключевые сущности и связи:
hotels ↔ rooms (1-N)
room_types ↔ rooms (1-N)
guests ↔ bookings (1-N)
hotels ↔ bookings (1-N)
bookings ↔ payments (1-N)

# Комментарии к физической модели:
1. hotels(hotel_id PK, …) — справочник отелей; stars с CHECK 1..5; created_at по умолчанию now().
2. room_types(room_type_id PK, code UQ, …) — справочник типов номеров (ограничения на вместимость и кровати).
3. rooms(room_id PK, hotel_id FK, room_type_id FK, unique(hotel_id, room_number)) — номера как пересечение отеля и типа.
4. guests(guest_id PK, email UQ, …) — справочник гостей.
5. bookings(booking_id PK, guest_id FK, hotel_id FK, …, nights STORED) — факт бронирования; status из фиксированного множества; вычисляемое поле nights = checkout_date - checkin_date; SCD-3-поля prev_* + updated_at.
6. payments(payment_id PK, booking_id FK ON DELETE CASCADE, amount CHECK >= 0, method IN ('card','cash','transfer')).

Индексы: селективные (ix_bookings_guest, ix_bookings_hotel, композитный на датах, индексы rooms по hotel/type, payments по booking).

# Логика SCD-3:
Триггер bookings_scd3_trg до обновления переносит старые значения status/checkin_date/checkout_date в prev_* и обновляет updated_at. Это даёт «последнее предыдущее» состояние без отдельной истории.

# Как запускать?
Файл на Postgre SQL (создан в pg admin 4) запускать сверху-вниз от создания бд и таблиц, заполнения таблиц до запросов к таблицам бд.

Можно использовать для учебныч курсов по БД/SQL.
