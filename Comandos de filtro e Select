--avaliações totais 
SELECT 
    f.titulo,
    COUNT(a.idAvaliacao) AS total_avaliacoes,
    ROUND(AVG(a.nota), 1) AS media_nota
FROM filmes f
LEFT JOIN avaliacoes a ON f.idFilme = a.idFilme
GROUP BY f.idFilme
ORDER BY total_avaliacoes DESC;

-- Usuário em específico que avaliou um filme específico 
SELECT 
    u.nome AS nome_usuario,
    u.email,
    f.titulo AS filme,
    a.nota,
    a.comentario,
    a.data
FROM avaliacoes a
JOIN usuario u ON a.idUsuario = u.idUsuario
JOIN filmes f ON a.idFilme = f.idFilme
WHERE f.titulo = 'Nome do Filme Aqui';

--Média de avaliações 
SELECT 
    f.titulo,
    ROUND(AVG(a.nota), 1) AS media_avaliacao,
    COUNT(a.idAvaliacao) AS total_avaliacoes
FROM filmes f
JOIN avaliacoes a ON f.idFilme = a.idFilme
GROUP BY f.idFilme, f.titulo
ORDER BY media_avaliacao DESC;
