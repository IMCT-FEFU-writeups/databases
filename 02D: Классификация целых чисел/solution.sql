select Value, 
case
    when Value > 0 then "positive"
    when Value < 0 then "negative"
    else "zero"
end as Classification
 from Numbers;
