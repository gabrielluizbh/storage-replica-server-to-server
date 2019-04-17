# Script para remoção da replicação - Créditos Gabriel Luiz - www.gabrielluiz.com ##

Get-SRPartnership
Get-SRPartnership | Remove-SRPartnership -force -IgnoreRemovalFailure
Get-SRGroup | Remove-SRGroup
Get-SRGroup

# Observações:
# Execute este comando em cada servidor para remover a replicação.
# Em um ambinete de produção execute somente Get-SRPartnership | Remove-SRPartnership com os complementos -force -IgnoreRemovalFailure se você perder a comunição como servidor SR1, isso é quando ocorrer um desatre, caso contrário o servidor SR2 pode continuar acreditando que está em uma pareceria (replicação).
