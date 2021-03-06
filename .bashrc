#-----------------------------------------------
# Configurações Gerais
#-----------------------------------------------
 
# Se não estiver rodando interativamente, não fazer nada
[ -z "$PS1" ] && return

# Variáveis de ambiente
SW=/home/ricardo/Downloads/sw/
PATH=$PATH:/usr/local/adt-bundle-linux/eclipse/

# JDK
JDK_HOME=/opt/jdk1.8.0_31/

# Editor
EDITOR=/usr/bin/emacs

# Portage
MAKE=/etc/portage/make.conf
PACKAGE_USE=/etc/portage/package.use/

 # Projetos
 PROJECTS=$HOME/projects/

  # Tex
  TEX=$PROJECTS/tex/

   # Psicologia da Educação
   PSICOLOGIA=$TEX/psicologia_da_educacao/
  
# Não armazenar as linhas duplicadas ou linhas que começam com espaço no historico
HISTCONTROL=ignoreboth
 
# Adicionar ao Historico e não substitui-lo
shopt -s histappend

# Definições do comprimento e tamnho do historico.
HISTSIZE=1000
HISTFILESIZE=2000
 
#===========================================
# Váriavies com as Cores
#===========================================
NONE="\[\033[0m\]" # Eliminar as Cores, deixar padrão)
 
## Cores de Fonte
K="\[\033[0;30m\]" # Black (Preto)
R="\[\033[0;31m\]" # Red (Vermelho)
G="\[\033[0;32m\]" # Green (Verde)
Y="\[\033[0;33m\]" # Yellow (Amarelo)
B="\[\033[0;34m\]"  # Blue (Azul)
M="\[\033[0;35m\]"  # Magenta (Vermelho Claro)
C="\[\033[0;36m\]"  # Cyan (Ciano - Azul Claro)
W="\[\033[0;37m\]"  # White (Branco)
V="\[\033[0;129m\]" # Violet (Violeta)
 
## Efeito Negrito (bold) e cores
BK="\[\033[1;30m\]"  # Bold+Black (Negrito+Preto)
BR="\[\033[1;31m\]"  # Bold+Red (Negrito+Vermelho)
BG="\[\033[1;32m\]"  # Bold+Green (Negrito+Verde)
BY="\[\033[1;33m\]"  # Bold+Yellow (Negrito+Amarelo)
BB="\[\033[1;34m\]"  # Bold+Blue (Negrito+Azul)
BM="\[\033[1;35m\]"  # Bold+Magenta (Negrito+Vermelho Claro)
BC="\[\033[1;36m\]"  # Bold+Cyan (Negrito+Ciano - Azul Claro)
BW="\[\033[1;37m\]"  # Bold+White (Negrito+Branco)
BV="\033[1;38;5;129m" # Bold+Violet (Negrito+Violeta)
 
## Cores de fundo (backgroud)
BGK="\[\033[40m\]" # Black (Preto)
BGR="\[\033[41m\]" # Red (Vermelho)
BGG="\[\033[42m\]" # Green (Verde)
BGY="\[\033[43m\]" # Yellow (Amarelo)
BGB="\[\033[44m\]" # Blue (Azul)
BGM="\[\033[45m\]" # Magenta (Vermelho Claro)
BGC="\[\033[46m\]" # Cyan (Ciano - Azul Claro)
BGW="\[\033[47m\]" # White (Branco)
 
#=============================================
# Configurações referentes ao usuário
#=============================================
 
## Verifica se é usuário root (UUID=0) ou usuário comum
if [ $UID -eq "0" ]; then 
	## Cores e efeitos do Usuario root 
	PS1="$BG[$BR\u$BG]$BY@$BG[$BV${HOSTNAME%%.*}$BG]$B:\w\n$BG>$BR \\$ $NONE" 
else 
	## Cores e efeitos do usuário comum 
 	PS1="$BR[$BG\u$BR]$BY@$BR[$BV${HOSTNAME%%.*}$BR]$B:\w\n$BR>$BG \\$ $NONE" 
fi 
 
# DIVERSOS
 
## Habilitando suporte a cores para o ls e outros aliases
## Vê se o arquivo existe
#if [ -x /usr/bin/dircolors ]; then
#test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
 
## Aliases (apelidos) para comandos
#alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias grep='grep --color=auto'
#alias fgrep='fgrep --color=auto'
#alias egrep='egrep --color=auto'
#fi # Fim do if do dircolor
