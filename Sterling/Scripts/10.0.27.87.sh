#!/bin/bash

# List of Agents, Interations,

declare -A agentserver=(
    ["AEL_RTAMAgentOP1"]="-Xms512m -Xmx1024m"
    ["AEL_Critical_Fulfillment"]="-Xms1024m -Xmx2048m"
    #["AEL_Critical_Capacity_Purge"]="-Xms1024m -Xmx2048m"
    ["AELOrderMonitorAgent"]="-Xms1024m -Xmx1536m"
    ["AELReturnAgent"]="-Xms512m -Xmx1536m"
    ["AELConsolidateToInv"]="-Xms512m -Xmx1024m"
    ["AEL_CreateReturnPostHoc"]="-Xms512m -Xmx1024m"
    ["AEL_LEADTIME_HOLD_PROCESS_AS"]="-Xms512m -Xmx1024m"
    ["AEL_SEND_INVOICE"]="-Xms512m -Xmx1024m"
    ["AEL_TO_SendToNode"]="-Xms512m -Xmx1024m"
    ["AEL_TO_ConsolidateToShipment_AS"]="-Xms512m -Xmx1024m"
    # Add more server here as needed ["ServerName"]="JVM HeapSize"
)

declare -A integrationserver=(
    ["AEL_Critical_ShipmentUpdateFromWMS_G2"]="-Xms768m -Xmx1536m"
    ["AEL_Critical_ShipmentUpdateFromWMS_G3"]="-Xms768m -Xmx1536m"
    ["AEL_Critical_Invoice_G2"]="-Xms768m -Xmx1536m"
    ["AEL_Critical_Invoice_G3"]="-Xms768m -Xmx1536m"
    ["AEL_createItemServer"]="-Xms768m -Xmx1536m"
    ["AEL_Critical_InventoryAlerts"]="-Xms512m -Xmx1024m"
    ["AEL_WCSStatusUpdateServer"]="-Xms512m -Xmx1024m"
    ["AEL_Critical_DeliveryUpdate_IS1"]="-Xms768m -Xmx1536m"
    ["AEL_WMSPickPackUpdate_IS_G1"]="-Xms768m -Xmx1536m"
    ["AEL_ReceiveOrder"]="-Xms512m -Xmx1024m"
    ["AEL_BillDesk"]="-Xms768m -Xmx1536m"
    ["AEL_ProcessEmail"]="-Xms768m -Xmx1536m"
    ["AEL_MOMOrderEventRef_G1"]="-Xms768m -Xmx1536m"
    ["AEL_ROEventServer"]="-Xms512m -Xmx1024m"
    ["AEL_ConsolidateToShipKafka"]="-Xms512m -Xmx1024m"
    ["AEL_OrderDeliveryUpdate_IS"]="-Xms768m -Xmx1536m"
    ["AEL_ShortOrdInvoice_IS"]="-Xms768m -Xmx1536m"
    ["AEL_ROM_PICKEDUP"]="-Xms768m -Xmx1536m"
    ["AEL_HOLD_RESOLVE"]="-Xms768m -Xmx1536m"
    ["AEL_UnscheduleServer"]="-Xms768m -Xmx1536m"
    ["AEL_CLOSE_SHIPMENT"]="-Xms512m -Xmx1024m"
    ["AEL_UpdateHeldInventory"]="-Xms768m -Xmx1536m"
    ["AEL_TO_ConfirmShipment"]="-Xms512m -Xmx1024m"
    ["AEL_TO_ReceiveOrder"]="-Xms768m -Xmx1536m"
    ["AEL_GenerateCreditNode_IS"]="-Xms512m -Xmx1024m"
    # Add more server here as needed ["ServerName"]="JVM HeapSize"
)
