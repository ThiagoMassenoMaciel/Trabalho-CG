
# 🎮🔨 Jogo Quebra-Tijolos — Trabalho de Computação Gráfica

> 👨‍💻 **Desenvolvido como trabalho acadêmico do curso de Sistemas de Informação**  
> 🏫 Disciplina: Computação Gráfica  
> 🚀 Objetivo: Desenvolver uma aplicação interativa utilizando a linguagem Java com o **Processing**

---

## 📸 Demonstração
🚧![vid-1](https://github.com/user-attachments/assets/db1c56f4-99b6-40d8-9008-33268d989993)
🚧![vid-2](https://github.com/user-attachments/assets/ecaa90c9-849c-4f11-b5c2-b08725fbf75d)

---

## 🧠 Objetivo do Projeto

🎯 O principal objetivo é criar uma aplicação gráfica utilizando **Processing**, simulando um jogo clássico no estilo **Breakout game**. O jogador controla uma barra(atravez do movimento do mouse) que rebate uma bola com o intuito de destruir todos os tijolos na tela no canto superior . O projeto explora conceitos de manipulação de imagens "avisos", colisões, interação do usuário e renderização gráfica.

---

## 🔧 Tecnologias Utilizadas

- 👾 **Processing** (Biblioteca gráfica em Java) — https://processing.org/  
- 💻 **Java** (Linguagem base do Processing)  
- 🎨 Manipulação de imagens no Processing (`PImage`)  
- 🖥️ Ambiente de desenvolvimento: **Processing IDE**  

---

## 📂 Arquivos

| Arquivo | Descrição |
|---------|------------|
| **Main.pde** | 🕹️ Arquivo principal. Contém as funções `setup()` e `draw()`, que controlam o loop principal do jogo e a inicialização do ambiente. Controla o fluxo de telas, como jogo rodando, tela de vitória e tela de perda de todas as vidas. Responsável por desenhar os tijolos, a barra/bastão e a bola |
| **Bola.pde** | ⚪ Responsável pela criação do objeto bola e Gerencia o comportamento da bola. Inclui movimentação, verificação de colisões com paredes, com a barra e com os tijolos. |
| **Tijolo.pde** | 🧱 Responsavél pela construção do objeto Tijolo . |
| **Bastao.pde** | 🪵 Constroi o objeto barra/bastão e controla a barra que o jogador movimenta na parte inferior da tela incluindo movimentação horizontal. |

---

## 🚀 Funcionalidades

✨ As principais funcionalidades implementadas no jogo são:

- 🏓 Movimento dinâmico da bola com rebotes nas paredes, no jogador e nos tijolos.
- 🥍 Movimento horizontal da barra/bastão de acordo com o movimento do mouse.
- 🧱 Destruição dos tijolos ao colidir com a bola.
- 🎯 Sistema de vidas — quando a bola cai fora do bastão/barra é exibida uma **imagem de aviso** indicando a perda de todas as vidas.
- 🏆 Tela de vitória — quando todos os tijolos são destruídos, uma **imagem de parabéns** aparece na tela.
- 🎨 Interface gráfica interativa.

---

## 🕹️ Como Executar o Projeto

### ✅ Pré-requisitos

- Instalar o ambiente **Processing IDE** (https://processing.org/download)

### 🚦 Passos:

1. Faça o download ou clone o repositório:

``` bash
git clone https://github.com/ThiagoMassenoMaciel/Trabalho-CG.git
```

2. Abra o arquivo `Main.pde` na IDE do Processing.

3. Clique no botão ▶️ (Run) na IDE do Processing.

4. Divirta-se quebrando todos os tijolos! 🏓🧱🔥

---

## 👨‍🏫 Créditos

Desenvolvido por: **Thiago Masseno Maciel**  
Disciplina de **Computação Gráfica** — Curso de **Sistemas de Informação**

---

## 🌐 Links Úteis

- Documentação Processing: https://processing.org/reference/  
- Tutoriais Processing: https://processing.org/tutorials/

---
