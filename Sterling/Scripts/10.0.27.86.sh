#!/bin/bash

# List of Agents, Interations,

declare -A agentserver=(
    ["AEL_Critical_SO_Order_Fulfillment"]="-Xms1024m -Xmx1536m"
    ["AEL_Critical_TO_Order_Fulfillment"]="-Xms512m -Xmx1024m"
    ["AEL_Critical_Reservation_Purge"]="-Xms512m -Xmx1024m"
    ["AEL_ExceptionMonitor"]="-Xms768m -Xmx1536m"
    ["AEL_GenerateSapFdCSV"]="-Xms512m -Xmx1024m"
    ["AEL_SapFeed_AS"]="-Xms512m -Xmx1024m"
    ["AEL_PaymentExecution"]="-Xms1024m -Xmx2048m"
    ["AEL_PaymentCollection"]="-Xms768m -Xmx1536m"
    ["AEL_AdvanceFeed"]="-Xms512m -Xmx1024m"
    ["AEL_GenerateCSVAdvFeed"]="-Xms512m -Xmx1024m"
    ["AEL_TO_ReleaseOrder_AS"]="-Xms512m -Xmx1024m"
    # Add more server here as needed ["ServerName"]="JVM HeapSize"
)

declare -A integrationserver=(
    ["AEL_GSTVoucherAgent"]="-Xms768m -Xmx1536m"
    ["AEL_Critical_WMSShipStatus"]="-Xms768m -Xmx1536m"
    #["AEL_Critical_ShipmentUpdateFromWMS"]="-Xms768m -Xmx1536m" #it was running on AppServer 27.61
    ["AEL_Critical_ShipmentUpdateFromWMS"]="-Xms768m -Xmx1536m"
    ["AEL_Critical_ShipmentUpdateFromWMS_G1"]="-Xms768m -Xmx1536m"
    ["AEL_DelaySMS"]="-Xms512m -Xmx1024m"
    ["SCWC_Critical_createOrder"]="-Xms1536m -Xmx2560m"
    ["AEL_Critical_Invoice"]="-Xms768m -Xmx1536m"
    ["AEL_Critical_Invoice_G1"]="-Xms768m -Xmx1536m"
    ["AEL_Critical_AdjustInventory"]="-Xms512m -Xmx1024m"
    ["AEL_SAPItemCreateIntgServer"]="-Xms512m -Xmx1024m"
    ["AEL_supplyChangeEmailServer"]="-Xms512m -Xmx1024m"
    ["AEL_WMSPickPackUpdate_IS"]="-Xms768m -Xmx1536m"
    ["AEL_ReadEOF"]="-Xms512m -Xmx1024m"
    ["AEL_ZeroQtyEmailServer"]="-Xms512m -Xmx1024m"
    ["AEL_MOMOrderEventRef"]="-Xms768m -Xmx1536m"
    ["AEL_OrderEventServer"]="-Xms512m -Xmx1024m"
    ["AEL_PackEventServer"]="-Xms512m -Xmx1024m"
    ["AEL_SapFeed_IS"]="-Xms512m -Xmx1024m"
    ["AEL_ReadyForCustPickup"]="-Xms768m -Xmx1536m"
    ["AEL_PaymentInfo_Fd_IS"]="-Xms512m -Xmx1024m"
    ["AEL_RevenueFd_IS"]="-Xms512m -Xmx1024m"
    ["AEL_ShipmentDeliveryUpdate_IS"]="-Xms1024m -Xmx2048m"
    ["AEL_CosCancelOrder"]="-Xms768m -Xmx1536m"
    ["AEL_TO_ShipmentUpdate"]="-Xms768m -Xmx1536m"
    # Add more server here as needed ["ServerName"]="JVM HeapSize"
)
