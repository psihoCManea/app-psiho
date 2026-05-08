create table if not exists clienti (
id uuid primary key default gen_random_uuid(),
created_at timestamptz default now(),
nume_client text,
telefon text
);

create table if not exists programari (
id uuid primary key default gen_random_uuid(),
created_at timestamptz default now(),
nume_client text,
telefon text,
data date,
ora_start text,
ora_final text,
status text default 'noua',
confirmare_trimisa boolean default false,
reminder_trimis boolean default false
);

create table if not exists indisponibilitati (
id uuid primary key default gen_random_uuid(),
created_at timestamptz default now(),
tip text,
data_start date,
data_final date,
ora_start text,
ora_final text,
activa boolean default true
);
