SELECT Nome, Ano FROM Filmes;

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta Para o Futuro';

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN 101 AND 149 ORDER BY Duracao ASC;

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

SELECT * from Atores WHERE GENERO = 'M';

SELECT * from Atores WHERE GENERO = 'F' ORDER BY PrimeiroNome;

SELECT f.nome AS Nome, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

SELECT f.nome AS Nome, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

SELECT f.nome AS Nome, a.PrimeiroNome AS PrimeiroNome, a.UltimoNome AS UltimoNome, ef.Papel AS Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;