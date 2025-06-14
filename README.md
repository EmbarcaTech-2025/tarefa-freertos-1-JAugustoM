
# Tarefa: Roteiro de FreeRTOS #1 - EmbarcaTech 2025

Autor: **José Augusto Alves de Moraes**

Curso: Residência Tecnológica em Sistemas Embarcados

Instituição: EmbarcaTech - HBr

Brasília, Junho de 2025

---

## Objetivos

O objetivo deste projeto foi implementar um projeto básico utilizando o Kernel do FreeRTOS. Utilizando as funções do FreeRTOS foram feitas trés tarefas, uma para mudar a cor do led RGB, uma para controlar o buzzer e uma ultima que recebe o input dos botões para interromper ou começar as outras tarefas.

---

## Componentes Utilizados

Para desenvolver o projeto foi utilizado os seguintes componentes da BitDogLab.

| Componente         | Quantidade | GPIO               |
| ------------------ | ---------- | -------------------|
| Botão              | 2          | 5, 6               |
| Buzzer             | 1          | 21                 |
| LED RGB            | 1          | 11 (G)             |

---

## Utilização

### Dependêcias

- [Pico C SDK](https://github.com/raspberrypi/pico-sdk)
- [Picotool](https://github.com/raspberrypi/picotool)
- [Just](https://github.com/casey/just)

### Como Compilar e Executar

Primeiramente é preciso baixar o submodulo do FreeRTOS com o comando a seguir:

`git submodule update --init --recursive`

Para compilar o projeto é possível utilizar a extensão da Pico C SDK ou o terminal, executando o seguinte comando na raiz do projeto.

`cmake -S . -B build -G Ninja && ninja -C build`

Após compilar o projeto basta passar o arquivo para a placa com o comando a seguir:

`sudo picotool load build/src/app/freertos-pico.elf`

Caso tenha o [just](https://github.com/casey/just) instalado é possível utilizar os dois comandas a seguir ao invés dos mencionados acima:

`just build`

`just load freertos-pico`

---

## 📜 Licença

GNU GPL-3.0.
