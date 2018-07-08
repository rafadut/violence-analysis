SELECT `estado`, 
	COALESCE (`2015`, 0) `2015`, 
	COALESCE (`2016`, 0) `2016`,
	((COALESCE(`2016`, 0) * 100) / COALESCE(`2015`, 0)) `percentual_variacao`,
    `populacao_de_mulheres`
FROM unyleya.todas_abas
WHERE `tipo` IN ('ameaça')
ORDER BY `percentual_variacao` DESC, `2015` DESC