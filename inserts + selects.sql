create database hotels_booking;

-- 1. отели
create table hotels (
  hotel_id     bigint generated always as identity primary key,
  name         varchar(200) not null,
  stars        int not null check (stars between 1 and 5),
  city         varchar(100) not null,
  address      varchar(300),
  country varchar(100) not null,
  created_at   timestamp not null default now()
);


insert into hotels (name, stars, country, city, address) values
  ('Riviera Palace', 5, 'Poland', 'Warsaw', 'Royal St 10'),
  ('Old Town Inn', 3, 'Poland', 'Krakow', 'Main Sq 5'),
  ('Grand Baltic Hotel', 4, 'Poland', 'Gdansk', 'Seaside Ave 21'),
  ('Mount View Resort', 5, 'Poland', 'Zakopane', 'Tatra St 15'),
  ('City Business Hotel', 4, 'Poland', 'Wroclaw', 'Market Square 8'),
  ('Berlin Central Hotel', 4, 'Germany', 'Berlin', 'Alexanderplatz 1'),
  ('Bavarian Lodge', 5, 'Germany', 'Munich', 'Königsplatz 20'),
  ('Rhine Riverside Hotel', 4, 'Germany', 'Cologne', 'Rheinstrasse 33'),
  ('Hamburg Harbor Inn', 3, 'Germany', 'Hamburg', 'Dock St 12'),
  ('Black Forest Retreat', 5, 'Germany', 'Freiburg', 'Forest Rd 9'),
  ('Hotel de la Seine', 4, 'France', 'Paris', 'Rue de Rivoli 18'),
  ('Cote dAzur Resort', 5, 'France', 'Nice', 'Promenade 22'),
  ('Bordeaux Wine Hotel', 4, 'France', 'Bordeaux', 'Wine St 14'),
  ('Lyon Central Inn', 3, 'France', 'Lyon', 'Bellecour Sq 5'),
  ('Chateau de Provence', 5, 'France', 'Avignon', 'Castle Rd 2'),
  ('Roma Colosseum Hotel', 4, 'Italy', 'Rome', 'Via Nazionale 77'),
  ('Venice Canal Inn', 5, 'Italy', 'Venice', 'Canal St 8'),
  ('Florence Art Hotel', 4, 'Italy', 'Florence', 'Ponte Vecchio 12'),
  ('Milan Fashion Hotel', 5, 'Italy', 'Milan', 'Fashion Ave 15'),
  ('Napoli Bay Inn', 3, 'Italy', 'Naples', 'Bay Rd 4'),
  ('Barcelona Beach Hotel', 5, 'Spain', 'Barcelona', 'Rambla Mar 11'),
  ('Madrid Royal Inn', 4, 'Spain', 'Madrid', 'Gran Via 45'),
  ('Valencia Garden Hotel', 4, 'Spain', 'Valencia', 'Garden St 7'),
  ('Seville Flamenco Inn', 3, 'Spain', 'Seville', 'Flamenco Sq 6'),
  ('Bilbao Riverside Hotel', 4, 'Spain', 'Bilbao', 'Riverside 3'),
  ('London Bridge Hotel', 5, 'UK', 'London', 'Tower Bridge Rd 1'),
  ('Oxford Scholar Inn', 4, 'UK', 'Oxford', 'University Rd 22'),
  ('Cambridge Court Hotel', 4, 'UK', 'Cambridge', 'King''s Parade 8'),
  ('Edinburgh Castle Hotel', 5, 'UK', 'Edinburgh', 'Castlehill 12'),
  ('Liverpool Dock Hotel', 3, 'UK', 'Liverpool', 'Albert Dock 5'),
  ('New York Central Hotel', 5, 'USA', 'New York', '5th Ave 100'),
  ('Chicago Lakeview Hotel', 4, 'USA', 'Chicago', 'Lake Shore 22'),
  ('Miami Beach Resort', 5, 'USA', 'Miami', 'Ocean Dr 55'),
  ('San Francisco Bay Inn', 4, 'USA', 'San Francisco', 'Bay St 7'),
  ('Las Vegas Strip Hotel', 5, 'USA', 'Las Vegas', 'Strip Blvd 1'),
  ('Toronto Skyline Hotel', 4, 'Canada', 'Toronto', 'Yonge St 200'),
  ('Vancouver Seaside Inn', 5, 'Canada', 'Vancouver', 'Pacific Rd 12'),
  ('Montreal Old Port Hotel', 4, 'Canada', 'Montreal', 'Port St 9'),
  ('Calgary Mountain Lodge', 3, 'Canada', 'Calgary', 'Rocky Rd 6'),
  ('Quebec Chateau Hotel', 5, 'Canada', 'Quebec City', 'Chateau Frontenac 1'),
  ('Tokyo Shinjuku Hotel', 5, 'Japan', 'Tokyo', 'Shinjuku 3-5-7'),
  ('Kyoto Garden Inn', 4, 'Japan', 'Kyoto', 'Temple Rd 22'),
  ('Osaka Bay Hotel', 4, 'Japan', 'Osaka', 'Bayfront 9'),
  ('Sapporo Snow Hotel', 3, 'Japan', 'Sapporo', 'Snow St 11'),
  ('Hiroshima Peace Inn', 4, 'Japan', 'Hiroshima', 'Peace Rd 2'),
  ('Istanbul Bosphorus Hotel', 5, 'Turkey', 'Istanbul', 'Bosphorus Ave 19'),
  ('Antalya Beach Resort', 5, 'Turkey', 'Antalya', 'Beach Rd 5'),
  ('Ankara Central Inn', 4, 'Turkey', 'Ankara', 'Kizilay Sq 8'),
  ('Izmir Aegean Hotel', 4, 'Turkey', 'Izmir', 'Aegean St 3'),
  ('Cappadocia Cave Hotel', 5, 'Turkey', 'Goreme', 'Cave Rd 1');
  
 insert into hotels (name, stars, country, city, address) values
  ('Harbor Breeze Hotel', 4, 'Portugal', 'Porto', 'Ribeira 12'),
  ('Andes Peak Lodge', 5, 'Chile', 'Santiago', 'Cordillera Ave 41'),
  ('Sahara Dunes Resort', 5, 'Morocco', 'Merzouga', 'Erg Chebbi 3'),
  ('Arctic Lights Inn', 4, 'Iceland', 'Reykjavik', 'Laugavegur 88'),
  ('Alpine Crest Hotel', 5, 'Switzerland', 'Zermatt', 'Matterhorn Rd 5'),
  ('Savanna Plains Lodge', 4, 'Kenya', 'Nairobi', 'Karen Rd 10'),
  ('Harbour View Suites', 4, 'Hong Kong', 'Hong Kong', 'Queensway 21'),
  ('Emerald Bay Hotel', 5, 'New Zealand', 'Queenstown', 'Lake Esplanade 16'),
  ('Outback Station Inn', 3, 'Australia', 'Alice Springs', 'Stuart Hwy 101'),
  ('Golden Pagoda Hotel', 4, 'Thailand', 'Bangkok', 'Silom 27'),
  ('Coral Reef Resort', 5, 'Maldives', 'Maafushi', 'Coral Ln 2'),
  ('Highveld City Hotel', 4, 'South Africa', 'Johannesburg', 'Sandton Dr 6'),
  ('Rainforest Canopy Lodge', 4, 'Costa Rica', 'La Fortuna', 'Arenal Rd 9'),
  ('Andalus Palace', 5, 'Spain', 'Seville', 'Santa Cruz 14'),
  ('Maple Leaf Inn', 3, 'Canada', 'Ottawa', 'Rideau St 33'),
  ('Aztec Sun Hotel', 4, 'Mexico', 'Mexico City', 'Reforma 250'),
  ('Patagonia Wind Hotel', 5, 'Argentina', 'El Calafate', 'Glacier Ave 7'),
  ('Celtic Harbor Inn', 4, 'Ireland', 'Cork', 'Grand Parade 2'),
  ('Danube Riverside Hotel', 4, 'Hungary', 'Budapest', 'Rakpart 18'),
  ('Baltic Shore Hotel', 3, 'Lithuania', 'Klaipeda', 'Baltijos 5'),
  ('Desert Rose Hotel', 5, 'UAE', 'Dubai', 'Marina Walk 1'),
  ('Pearl Souq Inn', 4, 'Qatar', 'Doha', 'Corniche 22'),
  ('Red Square Residence', 5, 'Russia', 'Moscow', 'Tverskaya 9'),
  ('Monsoon Garden Hotel', 4, 'India', 'Mumbai', 'Queens Rd 15'),
  ('Lotus Lake Resort', 5, 'Vietnam', 'Hanoi', 'West Lake 3'),
  ('Tea Hills Retreat', 4, 'Sri Lanka', 'Kandy', 'Peradeniya Rd 8'),
  ('Baltic Skyline Hotel', 4, 'Latvia', 'Riga', 'Brivibas 101'),
  ('Nordic Fjord Hotel', 5, 'Norway', 'Bergen', 'Bryggen 4'),
  ('Royal Opera Hotel', 4, 'Austria', 'Vienna', 'Ringstrasse 55'),
  ('Tulip Canal Inn', 3, 'Netherlands', 'Amsterdam', 'Prinsengracht 120'),
  ('Cathedral View Hotel', 4, 'Czechia', 'Prague', 'Karlova 7'),
  ('Danube Castle Inn', 3, 'Slovakia', 'Bratislava', 'Hviezdoslav Sq 6'),
  ('Carpathian Pines Lodge', 4, 'Romania', 'Brasov', 'Poiana 11'),
  ('Aegean Blue Hotel', 5, 'Greece', 'Santorini', 'Caldera 2'),
  ('Black Sea Breeze Inn', 3, 'Bulgaria', 'Varna', 'Primorski 19'),
  ('Atlas Mountain Lodge', 4, 'Morocco', 'Marrakesh', 'Medina 1'),
  ('Nile View Palace', 5, 'Egypt', 'Cairo', 'Corniche 99'),
  ('Sakura Garden Hotel', 4, 'Japan', 'Kyoto', 'Gion 12'),
  ('Han River Suites', 5, 'South Korea', 'Seoul', 'Gangnam 77'),
  ('Marina Bay Vista', 5, 'Singapore', 'Singapore', 'Bayfront 3');
select * from hotels;

-- 2. типы номеров
create table room_types (
  room_type_id bigint generated always as identity primary key,
  code         varchar(50) not null unique,   
  name         varchar(100) not null,
  max_guests   int not null check (max_guests > 0),  
  bed_count    int not null check (bed_count >= 0),
  extra_info       varchar(200)                  
);
insert into room_types (code, name, max_guests, bed_count, extra_info) values
  ('SGL',  'Single Room',      1, 1, 'No extra bed'),
  ('DBL',  'Double Room',      2, 1, 'Baby cot on request'),
  ('TWN',  'Twin Room',        2, 2, 'Extra bed available'),
  ('TRP',  'Triple Room',      3, 3, 'One rollaway bed possible'),
  ('QDR',  'Quadruple Room',   4, 4, 'Family setup'),
  ('DLX',  'Deluxe Room',      3, 2, 'Balcony, minibar'),
  ('SUP',  'Superior Room',    2, 1, 'Better view, higher floor'),
  ('STE',  'Suite',            4, 2, 'Living area, sofa bed included'),
  ('JSTE', 'Junior Suite',     3, 2, 'Smaller suite, extra sofa'),
  ('FAM',  'Family Room',      5, 3, 'Two bedrooms, extra cot possible'),
  ('STU',  'Studio',           2, 1, 'Kitchenette included'),
  ('APT',  'Apartment',        4, 2, 'Full kitchen, long stay'),
  ('VIL',  'Villa',            6, 3, 'Private pool, garden'),
  ('BNG',  'Bungalow',         4, 2, 'Terrace, garden view'),
  ('CAB',  'Cabin',            3, 2, 'Wooden house, rustic style'),
  ('PEN',  'Penthouse',        4, 2, 'Top floor, city view'),
  ('CON',  'Connecting Room',  4, 2, 'Shared inner door'),
  ('ADA',  'Accessible Room',  2, 1, 'Wheelchair friendly'),
  ('ECO',  'Economy Room',     2, 1, 'Small size, budget rate'),
  ('BUS',  'Business Room',    2, 1, 'Work desk, fast wifi');
select * from room_types;


--3. комнаты
create table rooms (
  room_id      bigint generated always as identity primary key,
  hotel_id     bigint not null references hotels(hotel_id),
  room_number  varchar(20) not null,         
  room_type_id bigint not null references room_types(room_type_id),
  unique (hotel_id, room_number)
);

insert into rooms (hotel_id, room_number, room_type_id)
select h.hotel_id,
       (( ( (g.n-1) / 20 ) + 1) * 100 + ((g.n-1) % 20 + 1))::text as room_number,
       case when g.n % 10 = 1 then 1   -- sgl
            when g.n % 10 = 2 then 2   -- dbl
            when g.n % 10 = 3 then 3   -- twn
            when g.n % 10 = 4 then 6   -- dlx
            when g.n % 10 = 5 then 7   -- sup
            when g.n % 10 = 6 then 8   -- ste
            when g.n % 10 = 7 then 9   -- jeste
            when g.n % 10 = 8 then 10  -- fam
            when g.n % 10 = 9 then 19  -- eco
            else 20                    -- bus
       end as room_type_id
from hotels h
cross join generate_series(1,20) g(n)
order by h.hotel_id, g.n;

select * from rooms;

-- 4. гости
create table guests (
  guest_id     bigint generated always as identity primary key,
  first_name   varchar(100) not null,
  last_name    varchar(100) not null,
  email        varchar(200),
  phone        varchar(50),
  unique (email)
);
insert into guests (first_name, last_name, email, phone) values
  ('Anna', 'Kowalska', 'anna.kowalska@example.com', '+48-601-111-222'),
  ('Jan', 'Nowak', 'jan.nowak@example.com', '+48-602-333-444'),
  ('Maria', 'Schmidt', 'maria.schmidt@example.de', '+49-171-555-666'),
  ('Thomas', 'Mueller', 'thomas.mueller@example.de', '+49-172-777-888'),
  ('Jean', 'Dupont', 'jean.dupont@example.fr', '+33-612-123-456'),
  ('Claire', 'Moreau', 'claire.moreau@example.fr', '+33-613-654-987'),
  ('Luca', 'Rossi', 'luca.rossi@example.it', '+39-331-111-222'),
  ('Giulia', 'Bianchi', 'giulia.bianchi@example.it', '+39-332-333-444'),
  ('Carlos', 'Gomez', 'carlos.gomez@example.es', '+34-611-222-333'),
  ('Isabella', 'Martinez', 'isabella.martinez@example.es', '+34-612-444-555'),
  ('John', 'Smith', 'john.smith@example.com', '+1-202-555-0101'),
  ('Emily', 'Johnson', 'emily.johnson@example.com', '+1-202-555-0102'),
  ('Michael', 'Brown', 'michael.brown@example.com', '+1-202-555-0103'),
  ('Sarah', 'Davis', 'sarah.davis@example.com', '+1-202-555-0104'),
  ('William', 'Taylor', 'william.taylor@example.com', '+1-202-555-0105'),
  ('Oliver', 'Wilson', 'oliver.wilson@example.co.uk', '+44-7700-900111'),
  ('Sophia', 'Evans', 'sophia.evans@example.co.uk', '+44-7700-900222'),
  ('Daniel', 'Clark', 'daniel.clark@example.co.uk', '+44-7700-900333'),
  ('Emma', 'White', 'emma.white@example.co.uk', '+44-7700-900444'),
  ('Lucas', 'Harris', 'lucas.harris@example.co.uk', '+44-7700-900555'),
  ('Yuki', 'Tanaka', 'yuki.tanaka@example.jp', '+81-90-1111-2222'),
  ('Haruto', 'Sato', 'haruto.sato@example.jp', '+81-90-3333-4444'),
  ('Mei', 'Wang', 'mei.wang@example.cn', '+86-138-1111-2222'),
  ('Wei', 'Zhang', 'wei.zhang@example.cn', '+86-138-3333-4444'),
  ('Fatima', 'Hassan', 'fatima.hassan@example.ae', '+971-50-123-4567'),
  ('Omar', 'Khalid', 'omar.khalid@example.ae', '+971-50-765-4321'),
  ('Ivan', 'Petrov', 'ivan.petrov@example.ru', '+7-916-111-2233'),
  ('Olga', 'Smirnova', 'olga.smirnova@example.ru', '+7-916-444-5566'),
  ('Ahmed', 'Ali', 'ahmed.ali@example.eg', '+20-100-111-2222'),
  ('Noura', 'Youssef', 'noura.youssef@example.eg', '+20-100-333-4444');
select * from guests;

--5. брони
drop table if exists bookings cascade;
create table bookings (
  booking_id     bigint generated always as identity primary key,
  guest_id       bigint not null references guests(guest_id),
  hotel_id       bigint not null references hotels(hotel_id),
  booking_date   date not null default current_date,
  status         varchar(30) not null check (status in ('new','confirmed','cancelled','completed')),
  checkin_date   date not null,
  checkout_date  date not null,
  nights         int generated always as (checkout_date - checkin_date) stored,
  -- предыдущие значения (scd3)
  prev_status        varchar(30),
  prev_checkin_date  date,
  prev_checkout_date date,
  updated_at     timestamptz not null default now(),
  constraint ck_dates check (checkout_date > checkin_date)
);

insert into bookings (guest_id, booking_date, status, hotel_id, checkin_date, checkout_date) values
  (1,  '2025-01-05', 'confirmed',  1, '2025-03-10', '2025-03-15'),
  (2,  '2025-01-06', 'new',        2, '2025-04-01', '2025-04-05'),
  (3,  '2025-01-07', 'completed',  3, '2025-01-20', '2025-01-25'),
  (4,  '2025-01-08', 'cancelled',  4, '2025-03-01', '2025-03-07'),
  (5,  '2025-01-09', 'confirmed',  15, '2025-05-02', '2025-05-06'),
  (6,  '2025-01-10', 'new',        61, '2025-03-20', '2025-03-25'),
  (7,  '2025-01-11', 'completed',  7, '2025-02-01', '2025-02-04'),
  (8,  '2025-01-12', 'confirmed',  8, '2025-04-10', '2025-04-15'),
  (9,  '2025-01-13', 'new',        19, '2025-06-01', '2025-06-10'),
  (10, '2025-01-14', 'confirmed', 10, '2025-03-05', '2025-03-08'),
  (11, '2025-01-15', 'new',       11, '2025-04-18', '2025-04-20'),
  (12, '2025-01-16', 'confirmed', 12, '2025-05-01', '2025-05-07'),
  (13, '2025-01-17', 'new',       13, '2025-07-01', '2025-07-14'),
  (14, '2025-01-18', 'confirmed', 14, '2025-06-20', '2025-06-25'),
  (15, '2025-01-19', 'new',       25, '2025-07-10', '2025-07-15'),
  (16, '2025-01-20', 'confirmed', 36, '2025-08-05', '2025-08-10'),
  (17, '2025-01-21', 'new',       47, '2025-09-01', '2025-09-07'),
  (18, '2025-01-22', 'confirmed', 68, '2025-09-15', '2025-09-20'),
  (19, '2025-01-23', 'new',       89, '2025-10-01', '2025-10-05'),
  (20, '2025-01-24', 'confirmed', 90, '2025-10-20', '2025-10-25');

--триггер для сдвига 
create or replace function bookings_scd3_before_update()
returns trigger language plpgsql as $$
begin
  -- если изменились ключевые поля (статус или даты) → сохраняем старые в prev_*
  if new.status is distinct from old.status
     or new.checkin_date is distinct from old.checkin_date
     or new.checkout_date is distinct from old.checkout_date then
     
     new.prev_status        := old.status;
     new.prev_checkin_date  := old.checkin_date;
     new.prev_checkout_date := old.checkout_date;
  end if;

  new.updated_at := now();
  return new;
end $$;

drop trigger if exists bookings_scd3_trg on bookings;
create trigger bookings_scd3_trg
before update on bookings
for each row execute function bookings_scd3_before_update();


--заполнение prev 
update bookings
set checkin_date = '2025-03-12', checkout_date = '2025-03-18'
where booking_id = 1;

update bookings
set status = 'completed', checkin_date = '2025-03-01', checkout_date = '2025-03-07'
where booking_id = 4;

select * from bookings;

-- 7. платежи
create table payments (
  payment_id   bigint generated always as identity primary key,
  booking_id   bigint not null references bookings(booking_id) on delete cascade,
  paid_at      timestamp not null default now(),
  amount       numeric(12,2) not null check (amount >= 0),
  method       varchar(30) not null check (method in ('card','cash','transfer'))
);

insert into payments (booking_id, paid_at, amount, method) values
  (1, '2025-02-22 10:10:00',  720.00, 'card'),
  (2, '2025-02-22 15:30:00',  450.00, 'cash'),
  (3, '2025-02-23 09:40:00',  980.00, 'transfer'),
  (4, '2025-02-23 18:25:00', 1300.00, 'card'),
  (5, '2025-02-24 11:55:00',  600.00, 'cash'),
  (6, '2025-02-24 20:40:00', 1100.00, 'transfer'),
  (7, '2025-02-25 10:20:00', 1550.00, 'card'),
  (8, '2025-02-25 16:15:00',  700.00, 'cash'),
  (9, '2025-02-26 08:50:00',  890.00, 'transfer'),
  (10, '2025-02-26 19:05:00', 1250.00, 'card'),
  (11, '2025-02-27 09:35:00',  530.00, 'cash'),
  (12, '2025-02-27 14:45:00',  960.00, 'transfer'),
  (13, '2025-02-28 11:25:00', 1700.00, 'card'),
  (14, '2025-02-28 17:10:00',  680.00, 'cash'),
  (15, '2025-03-01 10:50:00',  830.00, 'transfer'),
  (16, '2025-03-01 15:20:00', 1450.00, 'card'),
  (17, '2025-03-02 09:10:00',  770.00, 'cash'),
  (18, '2025-03-02 20:30:00', 1020.00, 'transfer'),
  (19, '2025-03-03 08:55:00', 1380.00, 'card'),
  (20, '2025-03-03 19:40:00',  640.00, 'cash');
select * from payments;

-- индексы
create index ix_bookings_guest   on bookings(guest_id);
create index ix_bookings_hotel   on bookings(hotel_id);
create index ix_bookings_daterng on bookings(checkin_date, checkout_date);
create index ix_payments_booking on payments(booking_id);
create index ix_rooms_hotel      on rooms(hotel_id);
create index ix_rooms_type       on rooms(room_type_id);

-- запросы к бд

-- 1. Кол-во отелей и средняя звёздность по стране (>=3).
select country, count(*) as hotels_cnt, round(avg(stars),2) as avg_stars
from hotels
group by country
having avg(stars) >= 3
order by avg_stars desc, hotels_cnt desc;

-- 2. Ночи по странам в летне-осенний период 2025.
select h.country, sum(b.nights) as total_nights, count(*) as bookings_cnt
from bookings b
join hotels h on h.hotel_id = b.hotel_id
where b.checkin_date >= date '2025-06-01'
  and b.checkout_date <= date '2025-09-30'
  and b.status in ('new','confirmed','completed')
group by h.country
order by total_nights desc;

-- 3. Какие типы номеров НЕ представлены в конкретном отеле.
with target_hotel as (
  select hotel_id from hotels where name = 'Riviera Palace' limit 1
)
select rt.name, rt.code
from rooms r
right join room_types rt on rt.room_type_id = r.room_type_id
     and r.hotel_id = (select hotel_id from target_hotel)
where r.room_id is null
order by rt.code;

-- 4. Сравнение звёздности отеля со средним по стране.
select h.*,
       (select avg(stars) from hotels h2 where h2.country = h.country) as country_avg_stars,
       case when h.stars >= (select avg(stars) from hotels h3 where h3.country = h.country)
            then '>= country avg' else '< country avg' end as cmp
from hotels h
order by country, stars desc;

-- 5. Гости, бронировавшие в странах, где есть 5-звездочные отели.
select distinct g.guest_id, g.first_name, g.last_name
from guests g
join bookings b on b.guest_id = g.guest_id
join hotels   h on h.hotel_id = b.hotel_id
where h.country in (
  select distinct country from hotels where stars = 5
)
order by g.last_name, g.first_name;

-- 6. Отели — лидеры звёздности в своём городе.
select h1.hotel_id, h1.name, h1.city, h1.stars
from hotels h1
where h1.stars >= all (
  select h2.stars from hotels h2 where h2.city = h1.city
)
order by h1.city, h1.name;

-- 7. Бронирования c платежом > 1000.
select b.booking_id, b.guest_id, b.hotel_id, b.status
from bookings b
where exists (
  select 1
  from payments p
  where p.booking_id = b.booking_id
    and p.amount > 1000
)
order by b.booking_id;

-- 8. Отели в одном городе.
select h1.city, h1.name as hotel_a, h2.name as hotel_b
from hotels h1
join hotels h2
  on h1.city = h2.city
 and h1.hotel_id < h2.hotel_id
order by h1.city, hotel_a, hotel_b;

-- 9. ТОП-3 стран по числу бронирований.
with country_stats as (
  select h.country, count(*) as bookings_cnt
  from bookings b
  join hotels h on h.hotel_id = b.hotel_id
  group by h.country
),
ranked as (
  select country, bookings_cnt,
         dense_rank() over (order by bookings_cnt desc) as rnk
  from country_stats
)
select country, bookings_cnt
from ranked
where rnk <= 3
order by bookings_cnt desc;

-- 10. Отели без единого бронирования.
select h.hotel_id, h.name, h.country, h.city
from hotels h
left join bookings b on b.hotel_id = h.hotel_id
where b.booking_id is null
order by h.country, h.city, h.name;

-- 11. Выручка по странам, разбивка по методам оплаты
select p.method, h.country,
       sum(p.amount)                                         as total_amount,
       sum(p.amount) filter (where p.method = 'card')        as card_amount,
       sum(p.amount) filter (where p.method = 'cash')        as cash_amount,
       sum(p.amount) filter (where p.method = 'transfer')    as transfer_amount
from payments p
join bookings b on b.booking_id = p.booking_id
join hotels   h on h.hotel_id   = b.hotel_id
group by p.method, h.country
order by total_amount desc;

-- 12. Рейтинг отелей внутри страны (топ-2).
with ranked as (
  select country, city, hotel_id, name, stars,
         rank() over (partition by country order by stars desc, name) as rnk
  from hotels
)
select * from ranked
where rnk <= 2
order by country, rnk, name;






