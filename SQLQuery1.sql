-- 1
SELECT 
	Nome,
	Ano
FROM Filmes

-- 2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7
SELECT Ano, COUNT(*) AS QuantidadeDeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeDeFilmes DESC;

-- 8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10
SELECT 
    f.Nome AS NomeFilme,
    g.Genero AS NomeGenero
FROM 
    Filmes AS f
JOIN 
    FilmesGenero AS fg ON f.id = fg.idFilme  
JOIN 
    Generos AS g ON fg.idGenero = g.id;

-- 11
SELECT 
    f.Nome AS NomeFilme,
    g.Genero AS NomeGenero
FROM 
    Filmes AS f
JOIN 
    FilmesGenero AS fg ON f.id = fg.idFilme  
JOIN 
    Generos AS g ON fg.idGenero = g.id
WHERE 
    g.Genero = 'Mistério';  

-- 12
SELECT 
    f.Nome AS NomeFilme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM 
    Filmes f
JOIN 
    ElencoFilme ef ON f.id = ef.idFilme
JOIN 
    Atores a ON ef.idAtor = a.id;


















