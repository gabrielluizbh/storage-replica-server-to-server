## Script para alteração da direção da replicação. - Créditos Gabriel Luiz - www.gabrielluiz.com ##

Set-SRPartnership -NewSourceComputerName SR2 -SourceRGName REPLICA-SR2 -DestinationComputerName SR1 -DestinationRGName REPLICA-SR1


# Explicação do comando Set-SRPartnership

# Set-SRPartnership - O cmdlet Set-SRPartnership modifica uma parceria de replicação entre dois grupos de replicação existentes.

# Você pode usar esse cmdlet para adicionar volumes replicados.

# Você também pode alterar a direção da replicação, o que torna um volume de origem em um volume de destino.

# -NewSourceComputerName SR2 - Novo Hostname do servidor de origem.

# -SourceRGName REPLICA-SR2 - Nome do RG (Replica Group) de origem.

# -DestinationComputerName SR1 - Hostname do servidor de destino.

# -DestinationRGName REPLICA-SR1 -Nome do RG (Replica Group) de destino.


#Observações:

# Antes a replicação será feita do servidor hostname name SR1 para o SR2 - Após o cmdlet Set-SRPartnership ser executado acontece a troca do SR2 para o SR1.

# Este comando altera a direção de replicação por um administrador após um desastre ocorrer.

# Para saber mais sobre esse cmdlet acesse: https://docs.microsoft.com/en-us/powershell/module/storagereplica/Set-SRPartnership?view=win10-ps