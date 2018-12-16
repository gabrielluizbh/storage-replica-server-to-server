## Script para criação da replicação. - Créditos Gabriel Luiz - www.gabrielluiz.com ##


New-SRPartnership -DestinationComputerName SR2 -DestinationLogVolumeName L: -DestinationRGName REPLICA-SR2 -DestinationVolumeName E: -SourceLogVolumeName L: -SourceRGName REPLICA-SR1 -SourceVolumeName E: -DestinationRGDescription "Disco de destino" -PreventReplication -ReplicationMode Synchronous -SourceComputerName SR1 -SourceRGDescription "Disco de origem"

# Explicação do comando New-SRPartnership.


# New-SRPartnership - Nova parceria.

# -DestinationComputerName SR2 - Hostname do servidor de destino.

# -DestinationLogVolumeName L: - Nome letra do volume de log de destino.

# -DestinationRGName REPLICA-SR2 - Nome do RG (Replica Group) de destino.

# -DestinationVolumeName E: - Nome letra do volume de destino.

# -SourceLogVolumeName L: - Nome letra do volume de log de origem.

# -SourceRGName REPLICA-SR1 - Nome do RG (Replica Group) de origem.

# -SourceVolumeName E: - Nome letra do volume de origem.

# -DestinationRGDescription "Disco de destino" - Especifica uma descrição para o grupo de replicação de destino.

# -PreventReplication - Este cmdlet impede que a replicação seja iniciada imediatamente. Por padrão, a replicação é iniciada automaticamente no momento em que você cria a parceria.

# -ReplicationMode Synchronous - Este cmdlet indica qual será o modo de replicação Síncrono (Synchronous) ou Assíncrono (Asynchronous). Também pode ser user o número 1 para Synchronous e número 2 para Asynchronous.

# -SourceComputerName SR1 - Hostname do servidor de origem.


# Também temos outros cmdlet que podem ser utilizados são eles:

# -AsyncRPO - ‎Especifica a diferença máxima de tempo, em segundos, que dados de parceria assíncrono podem ser diferentes entre origem e destino. Este é um objetivo de ponto de recuperação. O valor mínimo é de 30 segundos. O valor padrão é 5 minutos.‎
# ‎Após exceder esse tempo, o servidor de origem alerta-o serviço de saúde em clusters. Ele registra o evento 1239 no canal de log de eventos de armazenamento réplica Admin. Se o tempo RPO é menor do que o tempo configurado, evento 1240 é registrado.‎

# -EnableConsistencyGroups - Indica que os grupos de consistências estão habilitados para o grupo de replicação que contém vários volumes.
# Grupos de consistência fornecem pedidos de gravação. Isso pode ser importante, por exemplo, para replicação de dados de aplicativos em vários volumes.
# Se você ativar grupos de consistências, isso poderá diminuir a replicação e agravar o desempenho de  Input/Output (Entrada/Saída).

# -EnableEncryption - Indica que esta parceria deve criptografar conexões usando o SMB AES-128-GCM.
# A ativação da criptografia pode proteger as transferências de blocos da Réplica de Armazenamento da interceptação ou leitura do tipo man-in-the-middle.
# A ativação da criptografia poderá diminuir a replicação e agravar o desempenho de  Input/Output (Entrada/Saída).

# -LogSizeInBytes - Especifica o tamanho agregado dos arquivos de log em cada servidor no grupo de replicação para os volumes associados a esse grupo de replicação.
# O tamanho mínimo 512MB. Você pode especificar um valor usando o recurso de conversão de bytes do Windows PowerShell,
# como 4 GB ou 3200 MB. Um valor muito pequeno pode reduzir o desempenho da replicação ou aumentar o tempo de recuperação após uma interrupção entre servidores.

# -Seeded - Indica que o servidor de destino contém uma cópia semeada dos dados do servidor de origem.
# Os dados propagados são definidos como uma cópia de dados do servidor de origem que possui uma alta similaridade, como principalmente blocos vazios, restauração de um backup recente ou envio de cópias clonadas de discos para o servidor de destino.
# A propagação é mais eficaz quando se usa uma cópia anterior do armazenamento, como um espelho dividido ou unidades replicadas anteriormente, ou quando o armazenamento está praticamente vazio e estava sempre vazio, como uma unidade inicializada recentemente com um volume recém-formatado.
# A propagação é um pouco eficaz com dados provenientes de uma restauração de backup ou de uma cópia de árvore completa de dados ou de cópias de arquivos muito grandes.
# A propagação é menos eficaz quando se copia um grande número de arquivos pequenos de alguns locais aleatórios para alguns outros locais aleatórios.
# A Réplica de Armazenamento usa automaticamente a propagação quando ela reinicia a replicação após uma longa interrupção que envolveu os logs.

# Para saber mais sobre esse cmdlet acesse: https://docs.microsoft.com/en-us/powershell/module/storagereplica/New-SRPartnership?view=win10-ps