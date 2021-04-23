param domainName string
param appServicePlanId string
param location string = resourceGroup().location

resource certificate 'Microsoft.Web/certificates@2020-06-01' = {
  name: domainName
  location: location
  properties: {
    canonicalName: domainName
    serverFarmId: appServicePlanId
  }
}

output thumbprint string = certificate.properties.thumbprint
