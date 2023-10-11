-- ATIVIDADE 1
SELECT Nome, Ano 
	FROM Filmes

-- ATIVIDADE 2
SELECT Nome, Ano, Duracao
	FROM Filmes
	ORDER BY Ano ASC

-- ATIVIDADE 3
SELECT Nome, Ano, Duracao
	FROM Filmes
	WHERE Nome = 'De Volta para o Futuro'

-- ATIVIDADE 4
SELECT *
	FROM Filmes
	WHERE Ano = 1997

-- ATIVIDADE 5
SELECT * 
	FROM Filmes
	WHERE Ano > 2000

-- ATIVIDADE 6
SELECT *
	FROM Filmes
	WHERE Duracao BETWEEN 100 AND 150
	ORDER BY Duracao ASC

-- ATIVIDADE 7
SELECT Ano, COUNT(Ano) AS Quantidade
	FROM Filmes
	GROUP BY Ano
	ORDER BY Quantidade DESC

-- ATIVIDADE 8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M'

-- ATIVIDADE 9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- ATIVIDADE 10
SELECT 
	Filmes.Nome,
	G.Genero
	FROM Filmes
INNER JOIN FilmesGenero FG ON Filmes.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero

-- ATIVIDADE 11
SELECT 
	Filmes.Nome,
	G.Genero
	FROM Filmes
INNER JOIN FilmesGenero FG ON Filmes.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero 
WHERE G.Genero = 'Mistério'

-- ATIVIDADE 12
SELECT 
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel 
	FROM Filmes
INNER JOIN ElencoFilme ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores Atores ON Atores.Id = ElencoFilme.IdAtor