# Script para remoção da replicação - Créditos Gabriel Luiz - www.gabrielluiz.com ##

Get-SRPartnership
Get-SRPartnership | Remove-SRPartnership  
Get-SRGroup | Remove-SRGroup
Get-SRGroup

# Observação: Execute este comando em cada servidor.