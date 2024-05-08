const express = require('express');
const { Pool } = require('pg');

const app = express();
const PORT = 4000;

app.use(express.json());

const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'jogadores',
    password: 'ds564',
    port: 7007
});

app.post('/jogador', async (req, res) => {
    try {
        const { nome, idade, habilidade, posicao, numero_camisa, equipe} = req.body;
       
        await pool.query('INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe) VALUES ($1, $2, $3, $4, $5, $6)', [nome, idade, habilidade, posicao, numero_camisa, equipe]);
        res.status(201).send({ mensagem: 'jogador adicionado com sucesso'});
      } catch (error) {
        console.error('erro ao adicionar jogador:', error);
        res.status(500).send('erro ao adicionar jogador');
    }
});

app.get('/jogador', async (req, res) => {
    try {
      const resultado = await pool.query('SELECT * FROM jogador');
      res.json(resultado.rows);
    } catch (error) {
      console.error('Erro ao obter jogador:', error);
      res.status(500).send('Erro ao obter jogador');
    }
});

app.put('/jogador/:id', async (req, res) => {
    try {
      const { id } = req.params;
      const { nome, idade, habilidade, posicao, numero_camisa, equipe} = req.body;
     
      await pool.query('UPDATE jogador SET nome = $1, idade = $2, habilidade = $3, posicao = $4, numero_camisa = $5, equipe = $6 WHERE id = $7', [nome, idade, habilidade, posicao, numero_camisa, equipe, id]);
      res.status(201).send({ mensagem: 'jogador atualizado com sucesso'});
    } catch (error) {
    console.error('erro ao atualizar jogador:', error);
    res.status(500).send('erro ao atualizar jogador');
    }
});

app.delete('/jogador/:id', async (req, res) => {
    try {
      const { id } = req.params;
      await pool.query('DELETE FROM jogador WHERE id = $1', [id]);
      res.status(200).send({ mensagem: 'jogador excluído com sucesso'});
    } catch (error) {
      console.error('erro ao excluir jogador:', error);
      res.status(500).send('erro ao excluir jogador');
    }
});




app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
  });
