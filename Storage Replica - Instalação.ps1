## Script de instalação da Função de File Service e o Recurso de Storage Replica - Créditos Gabriel Luiz - www.gabrielluiz.com ##

$Servers = 'SR1','SR2' # Host name dos servidores.

$Servers | ForEach { Install-WindowsFeature -ComputerName $_ -Name Storage-Replica,FS-FileServer -IncludeManagementTools -restart } # Instalação da Função de File Service e o Recurso de Storage Replica.


# Observações:

# Este comando deve ser executado no segundo servidor no caso o servidor com o hostname SR2.

# A Função de (File Service) Servidor de Arquivos só é necessária para Test-SRTopology funcionar, pois abre as portas de firewall necessárias para teste.

# Ao final da instalação ambos servidores serão reinicializados.