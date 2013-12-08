@echo off
rem Runs a collection of VDM++ test examples
rem Assumes specifications is in Word RTF files

set S1=Jogador.rtf Tabuleiro.rtf Jogo.rtf Jogador.rtf
set S2=TestTabuleiro.rtf TestJogador.rtf TestJogo.rtf 


"C:\Program Files\The VDM++ Toolbox v9.0.2\bin\vppde" -p -R vdm.tc %S1% %S2%
for /R %%f in (*.arg) do call vdmtest "%%f"
