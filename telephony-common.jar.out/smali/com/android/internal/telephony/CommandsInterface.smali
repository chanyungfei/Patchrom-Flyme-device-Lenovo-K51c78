.class public interface abstract Lcom/android/internal/telephony/CommandsInterface;
.super Ljava/lang/Object;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CommandsInterface$RadioState;
    }
.end annotation


# static fields
.field public static final CAT_CORPORATE:I = 0x3

.field public static final CAT_NETOWRK_SUBSET:I = 0x1

.field public static final CAT_NETWOEK:I = 0x0

.field public static final CAT_SERVICE_PROVIDER:I = 0x2

.field public static final CAT_SIM:I = 0x4

.field public static final CB_FACILITY_BAIC:Ljava/lang/String; = "AI"

.field public static final CB_FACILITY_BAICr:Ljava/lang/String; = "IR"

.field public static final CB_FACILITY_BAOC:Ljava/lang/String; = "AO"

.field public static final CB_FACILITY_BAOIC:Ljava/lang/String; = "OI"

.field public static final CB_FACILITY_BAOICxH:Ljava/lang/String; = "OX"

.field public static final CB_FACILITY_BA_ALL:Ljava/lang/String; = "AB"

.field public static final CB_FACILITY_BA_FD:Ljava/lang/String; = "FD"

.field public static final CB_FACILITY_BA_MO:Ljava/lang/String; = "AG"

.field public static final CB_FACILITY_BA_MT:Ljava/lang/String; = "AC"

.field public static final CB_FACILITY_BA_SIM:Ljava/lang/String; = "SC"

.field public static final CDMA_SMS_FAIL_CAUSE_ENCODING_PROBLEM:I = 0x60

.field public static final CDMA_SMS_FAIL_CAUSE_INVALID_TELESERVICE_ID:I = 0x4

.field public static final CDMA_SMS_FAIL_CAUSE_OTHER_TERMINAL_PROBLEM:I = 0x27

.field public static final CDMA_SMS_FAIL_CAUSE_RESOURCE_SHORTAGE:I = 0x23

.field public static final CF_ACTION_DISABLE:I = 0x0

.field public static final CF_ACTION_ENABLE:I = 0x1

.field public static final CF_ACTION_ERASURE:I = 0x4

.field public static final CF_ACTION_REGISTRATION:I = 0x3

.field public static final CF_REASON_ALL:I = 0x4

.field public static final CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CF_REASON_BUSY:I = 0x1

.field public static final CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CF_REASON_NOT_REGISTERED:I = 0x6

.field public static final CF_REASON_NO_REPLY:I = 0x2

.field public static final CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CLIR_DEFAULT:I = 0x0

.field public static final CLIR_INVOCATION:I = 0x1

.field public static final CLIR_SUPPRESSION:I = 0x2

.field public static final GSM_SMS_FAIL_CAUSE_MEMORY_CAPACITY_EXCEEDED:I = 0xd3

.field public static final GSM_SMS_FAIL_CAUSE_UNSPECIFIED_ERROR:I = 0xff

.field public static final GSM_SMS_FAIL_CAUSE_USIM_APP_TOOLKIT_BUSY:I = 0xd4

.field public static final GSM_SMS_FAIL_CAUSE_USIM_DATA_DOWNLOAD_ERROR:I = 0xd5

.field public static final OP_ADD:I = 0x2

.field public static final OP_LOCK:I = 0x1

.field public static final OP_PERMANENT_UNLOCK:I = 0x4

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNLOCK:I = 0x0

.field public static final REFRESH_NAA_FILE_CHANGE:I = 0x1

.field public static final REFRESH_NAA_INIT:I = 0x3

.field public static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field public static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field public static final REFRESH_UICC_RESET:I = 0x4

.field public static final SERVICE_CLASS_DATA:I = 0x2

.field public static final SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SERVICE_CLASS_FAX:I = 0x4

.field public static final SERVICE_CLASS_LINE2:I = 0x100

.field public static final SERVICE_CLASS_MAX:I = 0x80

.field public static final SERVICE_CLASS_NONE:I = 0x0

.field public static final SERVICE_CLASS_PACKET:I = 0x40

.field public static final SERVICE_CLASS_PAD:I = 0x80

.field public static final SERVICE_CLASS_SMS:I = 0x8

.field public static final SERVICE_CLASS_VIDEO:I = 0x200

.field public static final SERVICE_CLASS_VOICE:I = 0x1

.field public static final USSD_HANDLED_BY_STK:I = 0x3

.field public static final USSD_MODE_LOCAL_CLIENT:I = 0x3

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_NOT_SUPPORTED:I = 0x4

.field public static final USSD_MODE_NW_RELEASE:I = 0x2

.field public static final USSD_MODE_NW_TIMEOUT:I = 0x5

.field public static final USSD_MODE_REQUEST:I = 0x1

.field public static final USSD_NETWORK_TIMEOUT:I = 0x5

.field public static final USSD_OPERATION_NOT_SUPPORTED:I = 0x4

.field public static final USSD_SESSION_END:I = 0x2

.field public static final UTK_REFRESH_PHB:I = 0x1

.field public static final UTK_REFRESH_SMS:I = 0x0

.field public static final UTK_REFRESH_SYS:I = 0x2


# virtual methods
.method public abstract ReadPhbEntry(IIILandroid/os/Message;)V
.end method

.method public abstract abortFemtoCellList(Landroid/os/Message;)V
.end method

.method public abstract abortSetupDataCall(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract acceptCall(Landroid/os/Message;)V
.end method

.method public abstract acceptVtCallWithVoiceOnly(ILandroid/os/Message;)V
.end method

.method public abstract acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
.end method

.method public abstract acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
.end method

.method public abstract addConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract cancelAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract cancelPendingUssd(Landroid/os/Message;)V
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract clearDataBearer(Landroid/os/Message;)V
.end method

.method public abstract conference(Landroid/os/Message;)V
.end method

.method public abstract conferenceDial([Ljava/lang/String;IZLandroid/os/Message;)V
.end method

.method public abstract configEvdoMode(ILandroid/os/Message;)V
.end method

.method public abstract configIratMode(ILandroid/os/Message;)V
.end method

.method public abstract configModemStatus(IILandroid/os/Message;)V
.end method

.method public abstract confirmIratChange(ILandroid/os/Message;)V
.end method

.method public abstract connectRilSocket()V
.end method

.method public abstract deactivateDataCall(IILandroid/os/Message;)V
.end method

.method public abstract deactivateDedicateDataCall(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract deleteSmsOnRuim(ILandroid/os/Message;)V
.end method

.method public abstract deleteSmsOnSim(ILandroid/os/Message;)V
.end method

.method public abstract deleteUPBEntry(IIILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public abstract disconnectRilSocket()V
.end method

.method public abstract doGeneralSimAuthentication(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract editUPBEntry(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract emergencyDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public abstract enableMd3Sleep(I)V
.end method

.method public abstract exitEmergencyCallbackMode(Landroid/os/Message;)V
.end method

.method public abstract explicitCallTransfer(Landroid/os/Message;)V
.end method

.method public abstract forceReleaseCall(ILandroid/os/Message;)V
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getAvoidSYSList(Landroid/os/Message;)V
.end method

.method public abstract getBasebandVersion(Landroid/os/Message;)V
.end method

.method public abstract getCDMASubscription(Landroid/os/Message;)V
.end method

.method public abstract getCLIR(Landroid/os/Message;)V
.end method

.method public abstract getCOLP(Landroid/os/Message;)V
.end method

.method public abstract getCOLR(Landroid/os/Message;)V
.end method

.method public abstract getCdmaBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getCdmaSubscriptionSource(Landroid/os/Message;)V
.end method

.method public abstract getCellInfoList(Landroid/os/Message;)V
.end method

.method public abstract getCurrentCalls(Landroid/os/Message;)V
.end method

.method public abstract getCurrentPOLList(Landroid/os/Message;)V
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getDeviceIdentity(Landroid/os/Message;)V
.end method

.method public abstract getDisplayState()I
.end method

.method public abstract getFemtoCellList(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract getGsmBroadcastConfig(Landroid/os/Message;)V
.end method

.method public abstract getHardwareConfig(Landroid/os/Message;)V
.end method

.method public abstract getIMEI(Landroid/os/Message;)V
.end method

.method public abstract getIMEISV(Landroid/os/Message;)V
.end method

.method public abstract getIMSI(Landroid/os/Message;)V
.end method

.method public abstract getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getIccApplicationStatus(ILandroid/os/Message;)V
.end method

.method public abstract getIccCardStatus(Landroid/os/Message;)V
.end method

.method public abstract getImsRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract getLastCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastDataCallFailCause(Landroid/os/Message;)V
.end method

.method public abstract getLastPdpFailCause(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLteOnCdmaMode()I
.end method

.method public abstract getMute(Landroid/os/Message;)V
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getNetworkSelectionMode(Landroid/os/Message;)V
.end method

.method public abstract getNitzTime(Landroid/os/Message;)V
.end method

.method public abstract getOperator(Landroid/os/Message;)V
.end method

.method public abstract getOplmnVersion(Landroid/os/Message;)V
.end method

.method public abstract getPDPContextList(Landroid/os/Message;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPOLCapabilty(Landroid/os/Message;)V
.end method

.method public abstract getPhoneBookMemStorage(Landroid/os/Message;)V
.end method

.method public abstract getPhoneBookStringsLength(Landroid/os/Message;)V
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getPreferredVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getRadioCapability(Landroid/os/Message;)V
.end method

.method public abstract getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract getRilVersion()I
.end method

.method public abstract getSignalStrength(Landroid/os/Message;)V
.end method

.method public abstract getSmsParameters(Landroid/os/Message;)V
.end method

.method public abstract getSmsSimMemoryStatus(Landroid/os/Message;)V
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getSupportedRadioAccessFamily()I
.end method

.method public abstract getUtkLocalInfo(Landroid/os/Message;)V
.end method

.method public abstract getVoiceRadioTechnology(Landroid/os/Message;)V
.end method

.method public abstract getVoiceRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract handleCallSetupRequestFromSim(ZILandroid/os/Message;)V
.end method

.method public abstract handleCallSetupRequestFromUim(ZLandroid/os/Message;)V
.end method

.method public abstract hangupAll(Landroid/os/Message;)V
.end method

.method public abstract hangupConnection(ILandroid/os/Message;)V
.end method

.method public abstract hangupForegroundResumeBackground(Landroid/os/Message;)V
.end method

.method public abstract hangupWaitingOrBackground(Landroid/os/Message;)V
.end method

.method public abstract holdCall(ILandroid/os/Message;)V
.end method

.method public abstract iccCloseLogicalChannel(ILandroid/os/Message;)V
.end method

.method public abstract iccGetATR(Landroid/os/Message;)V
.end method

.method public abstract iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccIOForAppEx(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract iccOpenChannelWithSw(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract isGettingAvailableNetworks()Z
.end method

.method public abstract lookupOperatorNameFromNetwork(JLjava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract modifyDataCall(ILcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;Landroid/os/Message;)V
.end method

.method public abstract nvReadItem(ILandroid/os/Message;)V
.end method

.method public abstract nvResetConfig(ILandroid/os/Message;)V
.end method

.method public abstract nvWriteCdmaPrl([BLandroid/os/Message;)V
.end method

.method public abstract nvWriteItem(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract openIccApplication(ILandroid/os/Message;)V
.end method

.method public abstract pcscfDiscoveryPco(ILandroid/os/Message;)V
.end method

.method public abstract profileDownload(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryCDMANetWorkRegistrationState(Landroid/os/Message;)V
.end method

.method public abstract queryCDMANetworkInfo(Landroid/os/Message;)V
.end method

.method public abstract queryCDMASmsAndPBStatus(Landroid/os/Message;)V
.end method

.method public abstract queryCLIP(Landroid/os/Message;)V
.end method

.method public abstract queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryCallWaiting(ILandroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryCellBroadcastConfigInfo(Landroid/os/Message;)V
.end method

.method public abstract queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryModemType(Landroid/os/Message;)V
.end method

.method public abstract queryNetworkLock(ILandroid/os/Message;)V
.end method

.method public abstract queryPhbStorageInfo(ILandroid/os/Message;)V
.end method

.method public abstract queryStkSetUpMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract queryUPBCapability(Landroid/os/Message;)V
.end method

.method public abstract queryUtkSetupMenuFromMD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract readPhoneBookEntryExt(IILandroid/os/Message;)V
.end method

.method public abstract readUPBGasList(IILandroid/os/Message;)V
.end method

.method public abstract readUPBGrpEntry(ILandroid/os/Message;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForAbnormalEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallAccepted(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallForwardingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaitingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaCardType(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaSubscriptionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCommonSlotNoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDataNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDedicateBearerActivated(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDedicateBearerDeactivated(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDedicateBearerModified(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEconfResult(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEconfSrvcc(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEfCspPlmnModeBitChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEngModeNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEusimReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForFemtoCellInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForGetAvailableNetworksDone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForGmssRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIMEILock(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsDisable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsDisableDone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsEnable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsRegistrationInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImsiRefreshDone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIratStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteBgSearchStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLteEarfcnInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMelockChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNetworkTypeChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPhbReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRacUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRemoveRestrictEutran(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSessionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimMissing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimPlugIn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimPlugOut(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSimRecovery(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSmsReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSrvccStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForViaGpsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVirtualSimOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVirtualSimOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerSetDataAllowed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall(Landroid/os/Message;)V
.end method

.method public abstract reloadModemType(ILandroid/os/Message;)V
.end method

.method public abstract removeCellBroadcastMsg(IILandroid/os/Message;)V
.end method

.method public abstract removeConferenceMember(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract replaceVtCall(ILandroid/os/Message;)V
.end method

.method public abstract reportSmsMemoryStatus(ZLandroid/os/Message;)V
.end method

.method public abstract reportStkServiceIsRunning(Landroid/os/Message;)V
.end method

.method public abstract reportUtkServiceIsRunning(Landroid/os/Message;)V
.end method

.method public abstract requestAGPSGetMpcIpPort(Landroid/os/Message;)V
.end method

.method public abstract requestAGPSSetMpcIpPort(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestAGPSTcpConnected(ILandroid/os/Message;)V
.end method

.method public abstract requestDeactivateLinkDownPdn(Landroid/os/Message;)V
.end method

.method public abstract requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract requestSetEtsDev(ILandroid/os/Message;)V
.end method

.method public abstract requestSetLteEarfcnEnabled(ZLandroid/os/Message;)V
.end method

.method public abstract requestSetPsActiveSlot(ILandroid/os/Message;)V
.end method

.method public abstract requestShutdown(Landroid/os/Message;)V
.end method

.method public abstract requestSwitchHPF(ZLandroid/os/Message;)V
.end method

.method public abstract requestTriggerLteBgSearch(I[ILandroid/os/Message;)V
.end method

.method public abstract requestUtkRefresh(ILandroid/os/Message;)V
.end method

.method public abstract resetRadio(Landroid/os/Message;)V
.end method

.method public abstract resumeCall(ILandroid/os/Message;)V
.end method

.method public abstract selectFemtoCell(Lcom/mediatek/internal/telephony/FemtoCellInfo;Landroid/os/Message;)V
.end method

.method public abstract sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendCNAPSS(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendCdmaSms([BLandroid/os/Message;)V
.end method

.method public abstract sendDtmf(CLandroid/os/Message;)V
.end method

.method public abstract sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendImsCdmaSms([BIILandroid/os/Message;)V
.end method

.method public abstract sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendScreenState(Z)V
.end method

.method public abstract sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract separateConnection(ILandroid/os/Message;)V
.end method

.method public abstract setArsiReportThreshold(ILandroid/os/Message;)V
.end method

.method public abstract setAvoidSYS(ZLandroid/os/Message;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setBandMode([ILandroid/os/Message;)V
.end method

.method public abstract setBipPsType(I)V
.end method

.method public abstract setCLIP(ZLandroid/os/Message;)V
.end method

.method public abstract setCLIR(ILandroid/os/Message;)V
.end method

.method public abstract setCOLP(ZLandroid/os/Message;)V
.end method

.method public abstract setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallIndication(IIILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZILandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setCdmaRegistrationSuspendEnabled(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscriptionSource(ILandroid/os/Message;)V
.end method

.method public abstract setCellBroadcastChannelConfigInfo(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCellBroadcastLanguageConfigInfo(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCellInfoListRate(ILandroid/os/Message;)V
.end method

.method public abstract setCnapNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setDataAllowed(ZLandroid/os/Message;)V
.end method

.method public abstract setDataCentric(ZLandroid/os/Message;)V
.end method

.method public abstract setDataOnToMD(ZLandroid/os/Message;)V
.end method

.method public abstract setDataProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;Landroid/os/Message;)V
.end method

.method public abstract setEccServiceCategory(I)V
.end method

.method public abstract setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setEtws(ILandroid/os/Message;)V
.end method

.method public abstract setFDMode(IIILandroid/os/Message;)V
.end method

.method public abstract setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastActivation(ZLandroid/os/Message;)V
.end method

.method public abstract setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
.end method

.method public abstract setIMSEnabled(ZLandroid/os/Message;)V
.end method

.method public abstract setImsCallStatus(ZLandroid/os/Message;)V
.end method

.method public abstract setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
.end method

.method public abstract setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setInstanceId(I)V
.end method

.method public abstract setInvalidSimInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setLocationUpdates(ZLandroid/os/Message;)V
.end method

.method public abstract setMdnNumber(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setMeid(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setModemPower(ZLandroid/os/Message;)V
.end method

.method public abstract setMute(ZLandroid/os/Message;)V
.end method

.method public abstract setNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeManualWithAct(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setNetworkSelectionModeSemiAutomatic(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setOnCallRelatedSuppSvc(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCdmaSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnCdmaToneSignal(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnEtwsNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnIncomingCallIndication(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnMeSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnPlmnChangeNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnRegistrationSuspended(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnStkCallCtrl(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnStkEvdlCall(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnStkSetupMenuReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUtkEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUtkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUtkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOplmn(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setPhoneBookMemStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setPhoneType(I)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setPreferredVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
.end method

.method public abstract setRadioPower(ZLandroid/os/Message;)V
.end method

.method public abstract setRegistrationSuspendEnabled(ILandroid/os/Message;)V
.end method

.method public abstract setRemoveRestrictEutranMode(ZLandroid/os/Message;)V
.end method

.method public abstract setResumeCdmaRegistration(Landroid/os/Message;)V
.end method

.method public abstract setResumeRegistration(ILandroid/os/Message;)V
.end method

.method public abstract setScri(ZLandroid/os/Message;)V
.end method

.method public abstract setScriResult(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setSmsParameters(Landroid/telephony/SmsParameters;Landroid/os/Message;)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setSpeechCodecInfo(ZLandroid/os/Message;)V
.end method

.method public abstract setSrvccCallContextTransfer(I[Lcom/mediatek/internal/telephony/SrvccCallContext;)V
.end method

.method public abstract setStkEvdlCallByAP(ILandroid/os/Message;)V
.end method

.method public abstract setStkSwitchMode(I)V
.end method

.method public abstract setStkUtkMode(ILandroid/os/Message;)V
.end method

.method public abstract setSuppServiceNotifications(ZLandroid/os/Message;)V
.end method

.method public abstract setSvlteRatMode(IIIIIZLandroid/os/Message;)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setTrm(ILandroid/os/Message;)V
.end method

.method public abstract setUiccSubscription(IIIILandroid/os/Message;)V
.end method

.method public abstract setViaTRM(ILandroid/os/Message;)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/internal/telephony/DefaultBearerConfig;Landroid/os/Message;)V
.end method

.method public abstract setupDedicateDataCall(IIZLcom/mediatek/internal/telephony/QosStatus;Lcom/mediatek/internal/telephony/TftStatus;Landroid/os/Message;)V
.end method

.method public abstract startDtmf(CLandroid/os/Message;)V
.end method

.method public abstract stopDtmf(Landroid/os/Message;)V
.end method

.method public abstract storeModemType(ILandroid/os/Message;)V
.end method

.method public abstract supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract switchAntenna(II)V
.end method

.method public abstract switchCardType(I)V
.end method

.method public abstract switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
.end method

.method public abstract syncNotifyDataCallList(Landroid/os/AsyncResult;)V
.end method

.method public abstract testingEmergencyCall()V
.end method

.method public abstract unSetCnapNotify(Landroid/os/Handler;)V
.end method

.method public abstract unSetInvalidSimInfo(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCallRelatedSuppSvc(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCallRing(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatCallSetUp(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatEvent(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatProactiveCmd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCatSessionEnd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCdmaSignalFade(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnCdmaToneSignal(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnEtwsNotification(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnIccSmsFull(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnMeSmsFull(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNITZTime(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewCdmaSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnNewGsmSms(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnPlmnChangeNotification(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnRegistrationSuspended(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnRestrictedStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsOnSim(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSmsStatus(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSpeechCodecInfo(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSs(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnStkCallCtrl(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnStkEvdlCall(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnStkSetupMenuReset(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUSSD(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUtkEvent(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUtkProactiveCmd(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUtkSessionEnd(Landroid/os/Handler;)V
.end method

.method public abstract unSetScriResult(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForAbnormalEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallAccepted(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallForwardingInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallWaitingInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaCardType(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaImsiReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaProvision(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaPrlChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaSubscriptionChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCellInfoList(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCipherIndication(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCommonSlotNoChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDataNetworkTypeChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDedicateBearerActivated(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDedicateBearerDeactivated(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDedicateBearerModified(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEconfResult(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEconfSrvcc(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEfCspPlmnModeBitChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEngModeNetworkInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEusimReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForFemtoCellInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForGmssRatChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForHardwareConfigChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIMEILock(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsDisable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsDisableDone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsEnable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsRegistrationInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImsiRefreshDone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIratStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLteBgSearchStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLteEarfcnInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMccMncChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMelockChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNeighboringInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNetworkTypeChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPhbReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPsNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRacUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioCapabilityChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRadioStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRemoveRestrictEutran(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRilConnected(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSessionChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimMissing(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimPlugIn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimPlugOut(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSimRecovery(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSmsReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSrvccStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionStatusChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForViaGpsEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVirtualSimOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVirtualSimOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVtRingInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVtStatusInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterSetDataAllowed(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnIccRefresh(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnIncomingCallIndication(Landroid/os/Handler;)V
.end method

.method public abstract updateImsRegistrationStatus(III)V
.end method

.method public abstract vtDial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
.end method

.method public abstract writePhbEntry(Lcom/android/internal/telephony/PhbEntry;Landroid/os/Message;)V
.end method

.method public abstract writePhoneBookEntryExt(Lcom/mediatek/common/telephony/gsm/PBEntry;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract writeUPBGrpEntry(I[ILandroid/os/Message;)V
.end method
