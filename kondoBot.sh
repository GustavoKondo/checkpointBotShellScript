#!/bin/bash
# made by Gkondo

RM='RM94624'
NUM=$(($RANDOM%4))

H=`date +%H`

HORAS=`date | cut -d" " -f4 | cut -d: -f1`
PERIODO=`date | cut -d" " -f5 | cut -d: -f1`
MINUTOS=`date | cut -d" " -f4 | cut -d: -f2`


#funcoes 

Inicio()
{
                echo
        sleep 1
        case $NUM in
        *'0'*)
                echo "Bem vindo ao kondobot"
                echo
                echo "para ajuda, digite help"
                echo
                read -p "fale com o robo:" PERGUNTA
        ;;
        *'1'*)
                echo "ta falando com um robo man? ta carente em"
                echo
                sleep 1
                echo "kkkkkk"
                echo
                read -p "meme po, pode falar to aqui para te ajudar: " PERGUNTA
        ;;
        *'2'*)
                echo "iae meu bom bem vindo ao kondobot"
                read -p "fala ai:" PERGUNTA
        ;;
        *'3'*)
                echo "ola eu sou o kondobot"
                echo
                read -p "fale com o bot desenvolvido pelo kondo" PERGUNTA
        ;;        
                
        esac

}

Help()
{

        echo "programa desenvolvido para o checkpoint de Linux."
        echo 
        echo "Para usa-lo, digite ./kondoBot e quando aparecer a mensagem de pergunta, responda com palavras minusculas"
        echo   
        echo "Para essa mensagem, digite help"

}



Namoro()
{
        echo
        sleep 1
        case $NUM in
        *'0'*)
                echo "sou um robo mano como vou namorar"
                sleep 1
                echo "mas e tu mano?."
                sleep 1
        ;;
        *'1'*)
                echo "A robo não namora, parece alguem que conheco"
                sleep 1
                echo "um tal de kondo que codou isso aqui :( ."
                sleep 1
        ;;
        *'2'*)
                echo "amigão não sou você não, claro que namoro"
                sleep 1
                echo "brincadeira, sou um robo, não posso namorar"
                sleep 1
        ;;
        *'3'*)
                echo "sem tempo irmão"
        ;;        

        esac
}

Vulnerabilidade()
{
        echo "Chama o nmap la."
        echo "qual foi nmap encosta aqui rapidao"
        sleep 1
        read -p "opa, qual é o host? " HOST
        nmap -sV -T4 -A $HOST
        echo "Pronto"
}

Calculadora()
{
        mate-calc
}

Horas()
{
        if [ $H -lt 12 ]; then

                        echo "Bom dia!"
                        echo -e "Agora são $HORAS:$MINUTOS $PERIODO"

                elif [ $H -lt 18 ]; then

                        echo "Boa tarde!"
                        echo -e "Agora são $HORAS:$MINUTOS $PERIODO"
                else
                        echo "Boa noite!"
                        echo -e "Agora são $HORAS:$MINUTOS $PERIODO"

                fi

}

Versao()
{
        echo "acha que eu to velho mano? beleza bora checar"
        echo "Vamo vê..."
        sleep 1
        sudo apt upgrade -y
        echo ""
        echo "estamos completamente atualizados :p"
}

Erro()
{
        echo "Eu ainda não fui programado para receber esse comando :/"
}

Musica()
{
        echo "Opa meu bom quer ouvir uma musica?"
        sleep 1
        echo "tenho 4 playlist aqui pra recomendar prefere qual? chill, anime/japones 70s80s90s ou brasil"
        sleep 1
        read -p "Digite a sua preferencia: " MUSICA
                case $MUSICA in
                *'chill'*)
                echo "uma parada meio melancolica."
                open "https://open.spotify.com/playlist/2faPflB1QAdsXzxuP5NxA2?si=3adad351110c42be"
                ;;
                *'anime/japones'*)
                echo "musica de nerdola"
                open "https://open.spotify.com/playlist/65y5Ko9eoQE6uZLXfdIBYe?si=fca141216866442f"
                ;;
                *'70s80s90s'*)
                echo "so musica boa, aqui e a elite"
                open "https://open.spotify.com/playlist/3UIH7uZC14NokQblaIFP6y?si=3d3a81cf0fd8495d"
                ;;
                *"brasil"*)
                echo "brasil tambem tem musica boa"
                open "https://open.spotify.com/playlist/4pJc95KjHNyKY9EnhRpdtT?si=93bef2ef9a8e49f0"
                ;;
                *""*)
                echo "ai tu se perdeu e coloco oq nao tem"
                esac
        sleep 2
        echo "é nois."
        sleep 2


}

Conectividade()
{
        echo "Verificando..."
        sleep 1
        ping www.fiap.com.br
        echo "Verificado"
}

Criador()
{
     
         case $NUM in
        *'0'*)
                echo -e "kondo me codou, $RM"
        ;;
        *'1'*)
                echo -e "Gustavo kondo  $RM"
        ;;
        *'2'*)
                echo -e "Gustavo Kondo aluno de cyber que me fez $RM"
        ;;
        *'3'*)
                echo -e "Gustavo kondo me fez pra te ajudar"
        ;;
        esac
   
}

Gobuster()
{
        echo
        sleep 1
        case $NUM in
        *'0'*)
        	echo "Me passa o alvo nesse modelo: http://192.168.0.1"
        	sleep 1
        	read -p "indique o alvo: " IP
        	gobuster dir -u $IP -w /usr/share/wordlists/dirb/common.txt
        	echo ""
        	echo "Pronto."
        ;;
        *'1'*)
                echo "meu mano gobuster faz isso ai"
                echo "gobuster encosta aqui"
                sleep 1
                echo "opa meu bom"
                sleep 1
        	echo "Gobuster: Me passa o alvo nesse modelo: http://192.168.0.1"
        	sleep 1
        	read -p "Gobuster: passa o alvo ai :  " IP
        	gobuster dir -u $IP -w /usr/share/wordlists/dirb/common.txt
        	echo ""
        	echo "tá na mao."
   
        esac
}
Servico()
{
        echo "ve ai"
        echo "abrindo..."
        sleep 1
        ss -atun
        echo "ta ai"
}

#----------------------------------

Inicio

#----case-----------

case $PERGUNTA in
        *'gobuster'*)
                Gobuster
        ;;
        *'namor'*)
                Namoro
        ;;
        *'conectivida'*)
                Conectividade
        ;;
        *'vulnera'*)
                Vulnerabilidade
        ;;
        *'manha'*)
                Horas
        ;;
        *'tarde'*)
                Horas
        ;;
        *'noite'*)
                Horas
        ;;
        *'hora'*)
                Horas
        ;;
        *'servic'*)
                Servico
        ;;
        *'versao'*)
                Versao
        ;;
        *'nome'*)
                Nome
        ;;
        *'music'*)
                Musica
        ;;
        *'help'*)
                Help
        ;;
        *'ajuda'*)
                Help
        ;;
            *''*)
                Erro
        ;;
        *'criador'*)
                Criador
        ;;
        *'calculadora'*)
                Calculadora
        ;;


esac
