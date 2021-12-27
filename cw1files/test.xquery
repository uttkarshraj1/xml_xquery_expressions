for $x in doc("KS0.xml")//w
where $x/price>30
order by $x/title
return $x/title