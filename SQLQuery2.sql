--done some basic data cleaning cleaning
select * from ipl2022
/*Questions to Answer
Top 3 batsman who got paid the most?*/
select top 3 player, cost_inr from ipl2022 where type='BATTER' order by cost_inr desc

--Top 5 bowlers who got paid the most?
select top 5 player, cost_inr from ipl2022 where type='BOWLER' order by cost_inr desc

Highest paid all-rounders?
select top 1 player ,cost_inr from ipl2022 where type='ALL-ROUNDER' order by cost_inr desc

--Average pay for Batsman, Bowler, All-Rounder, Wicket-Keeper?
select type,round(avg(cost_inr) ,2)as avg_price from ipl2022 group by type 

--List of Retained players with Salary?
select player , cost_inr from ipl2022 where [base price] = 'Retained'