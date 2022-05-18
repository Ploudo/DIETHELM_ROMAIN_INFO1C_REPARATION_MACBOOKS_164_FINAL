SELECT *
FROM t_macbook
WHERE (identifiant_macbook NOT BETWEEN 1500 AND 2000) 
	 AND EJob IN ('Vendeur','Analyste')