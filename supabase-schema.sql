-- Supabase Dashboard > SQL Editor içinde bu sorguyu bir kez çalıştırın.
create table if not exists public.sites (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  name text not null check (char_length(name) between 1 and 60),
  template text not null check (template in ('Portföy','İşletme','Blog','Mağaza')),
  created_at timestamptz not null default now()
);

alter table public.sites enable row level security;

create policy "Users can view their own sites" on public.sites for select using (auth.uid() = user_id);
create policy "Users can create their own sites" on public.sites for insert with check (auth.uid() = user_id);
create policy "Users can update their own sites" on public.sites for update using (auth.uid() = user_id);
create policy "Users can delete their own sites" on public.sites for delete using (auth.uid() = user_id);
