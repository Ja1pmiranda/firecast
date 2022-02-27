-- Macro para utilizar o item Aparato Mizzium do livro 
-- GUILDMASTER'S GUIDE TO RAVNICA

-- UNICA COISA QUE PRECISA SER  ALTERADA É DIZER SE SEU PERSSONAGEM POSSUI 
-- EXPERTISE EM ARCANISMO, POR MEIO DO TALENTO "SKILL EXPERT" POR EXEMPLO.
-- ALTERAR PARA "expertise = 1"  SE FOR O CASO. 

expertise = 0;


nivel = tonumber(inputQuery("Nivel da magia.", "0"));

dificuldade = 10+(nivel+nivel);
enviar("Teste de Arcanismo de dificuldade ".. dificuldade);

bonus = sheet.pericias.bonusarcanismo;
if expertise ==1 then
      bonus = bonus + tonumber(sheet.bonusProficiencia);
end;

local teste = rolar("1d20 + ".. bonus, "Teste de Arcanismo");

if teste >= dificuldade then
        enviar("A magia conjurada é a desejada");
end;

if teste< dificuldade then
       enviar("ESSA NÃO! Me confundi com os botões e acabei conjurando:");
       if nivel == 1 then
               op = rolar("1d6");
               if op == 1 then
                      enviar("Mãos Flamejantes!");
               end;
               if op == 2 then
                      enviar("Raio do Caos");
                      enviar("/raioCaos");
               end;
               if op == 3 then
                      enviar("Leque Cromático");
               end;
               if op == 4 then
                      enviar("Fogo das Fadas");
               end;
               if op == 5 then
                      enviar("Névoa Obscurecente");
               end;
               if op == 6 then
                      enviar("Onda Trovejante");
               end;
       end;

       if nivel == 2 then
               op = rolar("1d6");
               if op == 1 then
                      enviar("Nublar");
               end;
               if op == 2 then
                      enviar("Lufada de Vento");
               end;
               if op == 3 then
                      enviar("Esquentar metal");
               end;
               if op == 4 then
                      enviar("Flecha acida de Melf");
               end;
               if op == 5 then
                      enviar("Raio Ardente");
               end;
               if op == 6 then
                      enviar("Despedaçar");
               end;
       end;

       if nivel == 3 then
               op = rolar("1d6");
               if op == 1 then
                      enviar("Medo");
               end;
               if op == 2 then
                      enviar("Forjar Morte");
               end;
               if op == 3 then
                      enviar("Bola de fogo");
                      enviar("/FireBall");
               end;
               if op == 4 then
                      enviar("Forma Gasosa");
               end;
               if op == 5 then
                      enviar("Nevasca");
               end;
               if op == 6 then
                      enviar("Névoa Fétida");
               end;
       end;

       if nivel == 4 then
               op = rolar("1d4");
               if op == 1 then
                      enviar("Confusão");
               end;
               if op == 2 then
                      enviar("Conjurar Elementais Menores");
               end;
               if op == 3 then
                      enviar("Tentáculos Negros de Evard");
               end;
               if op == 4 then
                      enviar("Tempestade de Gelo");
               end;
       end;

       if nivel == 5 then
               op = rolar("1d4");
               if op == 1 then
                      enviar("Animar Objetos");
               end;
               if op == 2 then
                      enviar("Névoa Mortal");
               end;
               if op == 3 then
                      enviar("Cone de Frio");
               end;
               if op == 4 then
                      enviar("Coluna de Chamas");
               end;
       end;


end;
