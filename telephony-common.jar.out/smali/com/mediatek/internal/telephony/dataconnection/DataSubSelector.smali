.class public Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
.super Ljava/lang/Object;
.source "DataSubSelector.java"


# static fields
.field public static final ACTION_MOBILE_DATA_ENABLE:Ljava/lang/String; = "android.intent.action.ACTION_MOBILE_DATA_ENABLE"

.field private static final BSP_PACKAGE:Z

.field private static final DBG:Z = true

.field public static final EXTRA_MOBILE_DATA_ENABLE_REASON:Ljava/lang/String; = "reason"

.field private static final NO_SIM_VALUE:Ljava/lang/String; = "N/A"

.field private static final OPERATOR_OM:Ljava/lang/String; = "OM"

.field private static final OPERATOR_OP01:Ljava/lang/String; = "OP01"

.field private static final OPERATOR_OP02:Ljava/lang/String; = "OP02"

.field private static final OPERATOR_OP09:Ljava/lang/String; = "OP09"

.field private static final PROPERTY_3G_SIM:Ljava/lang/String; = "persist.radio.simswitch"

.field private static final PROPERTY_DEFAULT_DATA_ICCID:Ljava/lang/String; = "persist.radio.data.iccid"

.field private static final PROPERTY_MOBILE_DATA_ENABLE:Ljava/lang/String; = "persist.radio.mobile.data"

.field public static final REASON_MOBILE_DATA_ENABLE_SYSTEM:Ljava/lang/String; = "system"

.field public static final REASON_MOBILE_DATA_ENABLE_USER:Ljava/lang/String; = "user"

.field private static mOperatorSpec:Ljava/lang/String;


# instance fields
.field private PROPERTY_ICCID:[Ljava/lang/String;

.field protected mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntent:Landroid/content/Intent;

.field private mIsNeedWaitImsi:Z

.field private mIsNeedWaitUnlock:Z

.field private mPhoneNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "ro.mtk_bsp_package"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 41
    iput-boolean v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 65
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ril.iccid.sim1"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "ril.iccid.sim2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ril.iccid.sim3"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ril.iccid.sim4"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    .line 73
    new-instance v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector$1;-><init>(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    const-string v1, "DataSubSelector is created"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 143
    iput p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    .line 144
    const-string v1, "ro.operator.optr"

    const-string v2, "OM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operator Spec:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForSvlte(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->onSubInfoReady(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    return-void
.end method

.method private checkOp01CapSwitch()Z
    .locals 17

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v12, v15, [I

    .line 808
    .local v12, "simOpInfo":[I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v13, v15, [I

    .line 809
    .local v13, "simType":[I
    const/4 v14, -0x1

    .line 810
    .local v14, "targetSim":I
    const/4 v5, 0x0

    .line 811
    .local v5, "insertedSimCount":I
    const/4 v6, 0x0

    .line 812
    .local v6, "insertedStatus":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v15, [Z

    .line 813
    .local v8, "op01Usim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v7, v15, [Z

    .line 814
    .local v7, "op01Sim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v10, v15, [Z

    .line 815
    .local v10, "overseaUsim":[Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v15, [Z

    .line 816
    .local v9, "overseaSim":[Z
    const-string v15, "persist.radio.simswitch.iccid"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "capabilitySimIccid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v3, v15, [Ljava/lang/String;

    .line 819
    .local v3, "currIccId":[Ljava/lang/String;
    const-string v15, "checkOp01CapSwitch start"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 821
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_3

    .line 822
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v4

    .line 823
    aget-object v15, v3, v4

    if-eqz v15, :cond_0

    const-string v15, ""

    aget-object v16, v3, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 824
    :cond_0
    const-string v15, "error: iccid not found, wait for next sub ready"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 825
    const/4 v15, 0x0

    .line 956
    :goto_1
    return v15

    .line 827
    :cond_1
    const-string v15, "N/A"

    aget-object v16, v3, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 828
    add-int/lit8 v5, v5, 0x1

    .line 829
    const/4 v15, 0x1

    shl-int/2addr v15, v4

    or-int/2addr v6, v15

    .line 821
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 832
    :cond_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkOp01CapSwitch : Inserted SIM count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", insertedStatus: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 834
    invoke-static {v12, v13, v6}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getSimInfo([I[II)Z

    move-result v15

    if-nez v15, :cond_4

    .line 835
    const/4 v15, 0x0

    goto :goto_1

    .line 839
    :cond_4
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_7

    .line 840
    if-nez v4, :cond_6

    .line 841
    const-string v11, "gsm.sim.ril.mcc.mnc"

    .line 845
    .local v11, "propStr":Ljava/lang/String;
    :goto_3
    const-string v15, ""

    invoke-static {v11, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "sim_lock"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 846
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "checkOp01CapSwitch : phone "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is sim lock"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 847
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 839
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 843
    .end local v11    # "propStr":Ljava/lang/String;
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "gsm.sim.ril.mcc.mnc."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 850
    .end local v11    # "propStr":Ljava/lang/String;
    :cond_7
    const-string v15, "persist.radio.simswitch"

    const-string v16, "1"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v2, v15, -0x1

    .line 852
    .local v2, "capabilitySimId":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: capabilitySimIccid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "capabilitySimId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 854
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_c

    .line 856
    aget v15, v12, v4

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 857
    aget v15, v13, v4

    if-eqz v15, :cond_9

    .line 858
    const/4 v15, 0x1

    aput-boolean v15, v8, v4

    .line 854
    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 860
    :cond_9
    const/4 v15, 0x1

    aput-boolean v15, v7, v4

    goto :goto_5

    .line 862
    :cond_a
    aget v15, v12, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 863
    aget v15, v13, v4

    if-eqz v15, :cond_b

    .line 864
    const/4 v15, 0x1

    aput-boolean v15, v10, v4

    goto :goto_5

    .line 866
    :cond_b
    const/4 v15, 0x1

    aput-boolean v15, v9, v4

    goto :goto_5

    .line 871
    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01Usim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v8}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 872
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01Sim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v7}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 873
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "overseaUsim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 874
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "overseaSim: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v9}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 876
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v15, :cond_1a

    .line 877
    aget-object v15, v3, v4

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    .line 878
    invoke-static {v4, v8, v7, v10, v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v14

    .line 880
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: i = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", currIccId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v3, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", targetSim : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 882
    aget-boolean v15, v8, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 883
    const-string v15, "op01-C1: cur is old op01 USIM, no change"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 884
    if-eq v2, v4, :cond_d

    .line 885
    const-string v15, "op01-C1a: old op01 USIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 888
    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 889
    :cond_e
    aget-boolean v15, v7, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 890
    const/4 v15, -0x1

    if-eq v14, v15, :cond_10

    .line 891
    const-string v15, "op01-C2: cur is old op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 892
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 897
    :cond_f
    :goto_7
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 893
    :cond_10
    if-eq v2, v4, :cond_f

    .line 894
    const-string v15, "op01-C2a: old op01 SIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_7

    .line 898
    :cond_11
    aget-boolean v15, v10, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    .line 899
    const/4 v15, -0x1

    if-eq v14, v15, :cond_13

    .line 900
    const-string v15, "op01-C3: cur is old OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 906
    :cond_12
    :goto_8
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 902
    :cond_13
    if-eq v2, v4, :cond_12

    .line 903
    const-string v15, "op01-C3a: old OS USIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_8

    .line 907
    :cond_14
    aget-boolean v15, v9, v4

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 908
    const/4 v15, -0x1

    if-eq v14, v15, :cond_16

    .line 909
    const-string v15, "op01-C4: cur is old OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 915
    :cond_15
    :goto_9
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 911
    :cond_16
    if-eq v2, v4, :cond_15

    .line 912
    const-string v15, "op01-C4a: old OS SIM change slot, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_9

    .line 916
    :cond_17
    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    .line 917
    const-string v15, "op01-C5: cur is old non-op01 SIM/USIM but find higher SIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 918
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 919
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 921
    :cond_18
    const-string v15, "op01-C6: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 922
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 876
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 926
    :cond_1a
    invoke-static {v2, v8, v7, v10, v9}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getHigherPrioritySimForOp01(I[Z[Z[Z[Z)I

    move-result v14

    .line 928
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "op01: target SIM :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 929
    aget-boolean v15, v8, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 930
    const-string v15, "op01-C7: cur is new op01 USIM, no change"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 931
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 932
    :cond_1b
    aget-boolean v15, v7, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    .line 933
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1c

    .line 934
    const-string v15, "op01-C8: cur is new op01 SIM but find op01 USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 937
    :cond_1c
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 938
    :cond_1d
    aget-boolean v15, v10, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    .line 939
    const/4 v15, -0x1

    if-eq v14, v15, :cond_1e

    .line 940
    const-string v15, "op01-C9: cur is new OS USIM but find op01 SIMs, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 943
    :cond_1e
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 944
    :cond_1f
    aget-boolean v15, v9, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_21

    .line 945
    const/4 v15, -0x1

    if-eq v14, v15, :cond_20

    .line 946
    const-string v15, "op01-C10: cur is new OS SIM but find op01 SIMs/OS USIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 949
    :cond_20
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 950
    :cond_21
    const/4 v15, -0x1

    if-eq v14, v15, :cond_22

    .line 951
    const-string v15, "op01-C11: cur is non-op01 but find higher priority SIM, change!"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 952
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 956
    :goto_a
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 954
    :cond_22
    const-string v15, "op01-C12: no higher priority SIM, no cahnge"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1466
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 1472
    const-string v0, "DataSubSelector"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return-void
.end method

.method private onSubInfoReady(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    sget-boolean v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->BSP_PACKAGE:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "Don\'t support BSP Package."

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp01(Landroid/content/Intent;)V

    .line 181
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->updateDataEnableProperty()V

    goto :goto_0

    .line 164
    :cond_1
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp02(Landroid/content/Intent;)V

    goto :goto_1

    .line 166
    :cond_2
    sget-object v0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    const-string v1, "OP09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09(Landroid/content/Intent;)V

    goto :goto_1

    .line 168
    :cond_3
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOp09C(Landroid/content/Intent;)V

    goto :goto_1

    .line 170
    :cond_4
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    goto :goto_1

    .line 177
    :cond_5
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private setCapability(I)Z
    .locals 12
    .param p1, "phoneId"    # I

    .prologue
    .line 1273
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v8, v10, [I

    .line 1274
    .local v8, "phoneRat":[I
    const/4 v7, 0x1

    .line 1276
    .local v7, "isSwitchSuccess":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setCapability: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1278
    const-string v10, "persist.radio.simswitch"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, "curr3GSim":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current 3G Sim = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1281
    if-eqz v1, :cond_0

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1282
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1283
    .local v0, "curr3GPhoneId":I
    add-int/lit8 v10, p1, 0x1

    if-ne v0, v10, :cond_0

    .line 1284
    const-string v10, "Current 3G phone equals target phone, don\'t trigger switch"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    move v10, v7

    .line 1324
    .end local v0    # "curr3GPhoneId":I
    :goto_0
    return v10

    .line 1290
    :cond_0
    :try_start_0
    const-string v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 1292
    .local v5, "iTel":Lcom/android/internal/telephony/ITelephony;
    const-string v10, "phoneEx"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v6

    .line 1294
    .local v6, "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v5, :cond_1

    .line 1295
    const-string v10, "Can not get phone service"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1296
    const/4 v10, 0x0

    goto :goto_0

    .line 1299
    :cond_1
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(I)I

    move-result v2

    .line 1300
    .local v2, "currRat":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current phoneRat:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1302
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v9, v10, [Landroid/telephony/RadioAccessFamily;

    .line 1303
    .local v9, "rat":[Landroid/telephony/RadioAccessFamily;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v4, v10, :cond_4

    .line 1304
    if-ne p1, v4, :cond_2

    .line 1305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM switch to Phone"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1306
    const v10, 0x14008

    aput v10, v8, v4

    .line 1312
    :goto_2
    new-instance v10, Landroid/telephony/RadioAccessFamily;

    aget v11, v8, v4

    invoke-direct {v10, v4, v11}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v10, v9, v4

    .line 1303
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1310
    :cond_2
    const/high16 v10, 0x10000

    aput v10, v8, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1318
    .end local v2    # "currRat":I
    .end local v4    # "i":I
    .end local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .end local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .end local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :catch_0
    move-exception v3

    .line 1319
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v10, "Set phone rat fail!!!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1321
    const/4 v7, 0x0

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    move v10, v7

    .line 1324
    goto :goto_0

    .line 1314
    .restart local v2    # "currRat":I
    .restart local v4    # "i":I
    .restart local v5    # "iTel":Lcom/android/internal/telephony/ITelephony;
    .restart local v6    # "iTelEx":Lcom/mediatek/internal/telephony/ITelephonyEx;
    .restart local v9    # "rat":[Landroid/telephony/RadioAccessFamily;
    :cond_4
    :try_start_1
    invoke-interface {v6, v9}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1315
    const-string v10, "Set phone rat fail!!!"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1316
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private setDataEnabled(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataEnabled: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1142
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1143
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 1144
    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    const/4 v1, 0x0

    .line 1147
    .local v1, "phoneSubId":I
    if-nez p2, :cond_2

    .line 1148
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {v2, v1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0

    .line 1152
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v0, v3, :cond_0

    .line 1153
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    .line 1154
    if-eq v0, p1, :cond_3

    .line 1155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1156
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1152
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1158
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set Sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1159
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_2
.end method

.method private setDefaultData(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 1236
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 1237
    .local v3, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v2

    .line 1238
    .local v2, "sub":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    int-to-long v0, v4

    .line 1240
    .local v0, "currSub":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", current default sub:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1241
    int-to-long v4, v2

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 1242
    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubIdWithoutCapabilitySwitch(I)V

    .line 1246
    :goto_0
    return-void

    .line 1244
    :cond_0
    const-string v4, "setDefaultData: default data unchanged"

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private subSelectorForOm(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    const-string v5, "DataSubSelector for OM: only for capability switch; for default data, use google"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 189
    const/4 v3, -0x1

    .line 190
    .local v3, "phoneId":I
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v5, [Ljava/lang/String;

    .line 194
    .local v0, "currIccId":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 199
    :cond_0
    const-string v5, "persist.radio.data.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default data Iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_4

    .line 202
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    .line 203
    aget-object v5, v0, v2

    if-eqz v5, :cond_1

    const-string v5, ""

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    :cond_1
    const-string v5, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 236
    :cond_2
    :goto_1
    return-void

    .line 207
    :cond_3
    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 208
    move v3, v2

    .line 224
    :cond_4
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v5}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 225
    const-string v5, "DataSubSelector for OM: do not switch because of sim locking"

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 226
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 227
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 212
    :cond_5
    const-string v5, "N/A"

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear mcc.mnc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 215
    if-nez v2, :cond_7

    .line 216
    const-string v4, "gsm.sim.ril.mcc.mnc"

    .line 220
    .local v4, "propStr":Ljava/lang/String;
    :goto_2
    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v4    # "propStr":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "propStr":Ljava/lang/String;
    goto :goto_2

    .line 231
    .end local v4    # "propStr":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default data phoneid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 232
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 234
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_1
.end method

.method private subSelectorForOmLenovo(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 240
    const-string v7, "DataSubSelector for LENOVO-OM: only for capability switch; for default data OR  Single SIM, use google"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 243
    const/4 v6, -0x1

    .line 244
    .local v6, "phoneId":I
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v7, [Ljava/lang/String;

    .line 246
    .local v0, "currIccId":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 247
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 248
    .local v5, "insertedStatus":I
    const-string v7, "simDetectStatus"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 253
    .local v2, "detectedType":I
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v7

    if-nez v7, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->turnOffNewSimData(Landroid/content/Intent;)V

    .line 258
    :cond_0
    const-string v7, "persist.radio.data.iccid"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default data Iccid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 260
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_4

    .line 261
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 262
    aget-object v7, v0, v3

    if-eqz v7, :cond_1

    const-string v7, ""

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 263
    :cond_1
    const-string v7, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 300
    :cond_2
    :goto_1
    return-void

    .line 266
    :cond_3
    aget-object v7, v0, v3

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 267
    move v6, v3

    .line 273
    :cond_4
    if-ne v6, v9, :cond_a

    .line 274
    const/4 v3, 0x0

    :goto_2
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_7

    .line 275
    iget-object v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 276
    const-string v7, "N/A"

    aget-object v8, v0, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 277
    add-int/lit8 v4, v4, 0x1

    .line 278
    shl-int v7, v10, v3

    or-int/2addr v5, v7

    .line 274
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 260
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted SIM count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", insertedStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 282
    if-ne v4, v10, :cond_9

    .line 283
    const/4 v3, 0x0

    :goto_3
    iget v7, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v7, :cond_8

    .line 284
    shl-int v7, v10, v3

    and-int/2addr v7, v5

    if-eqz v7, :cond_b

    .line 285
    move v6, v3

    .line 289
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Single SIM:set capabliity to this phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 291
    :cond_9
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 295
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default data phoneid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 296
    if-eq v6, v9, :cond_2

    .line 298
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto/16 :goto_1

    .line 283
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private subSelectorForOp01(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 580
    const/4 v9, -0x1

    .line 581
    .local v9, "phoneId":I
    const/4 v4, 0x0

    .line 582
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 583
    .local v5, "insertedStatus":I
    const-string v11, "simDetectStatus"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 584
    .local v2, "detectedType":I
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v11, [Ljava/lang/String;

    .line 586
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v11, "DataSubSelector for op01"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 588
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_5

    .line 589
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    .line 590
    aget-object v11, v0, v3

    if-eqz v11, :cond_0

    const-string v11, ""

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 591
    :cond_0
    const-string v11, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 802
    :cond_1
    :goto_1
    return-void

    .line 594
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currIccId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 595
    const-string v11, "N/A"

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 596
    add-int/lit8 v4, v4, 0x1

    .line 597
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    or-int/2addr v5, v11

    .line 588
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "clear mcc.mnc:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 601
    if-nez v3, :cond_4

    .line 602
    const-string v10, "gsm.sim.ril.mcc.mnc"

    .line 606
    .local v10, "propStr":Ljava/lang/String;
    :goto_3
    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 604
    .end local v10    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 610
    .end local v10    # "propStr":Ljava/lang/String;
    :cond_5
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v11}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 611
    const-string v11, "DataSubSelector for OP01: do not switch because of sim locking"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 612
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 613
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 617
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserted SIM count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", insertedStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 620
    const-string v11, "persist.radio.data.iccid"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Default data Iccid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 623
    if-nez v4, :cond_7

    .line 628
    const-string v11, "C0: No SIM inserted, set data unset"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 629
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 630
    :cond_7
    const/4 v11, 0x1

    if-ne v4, v11, :cond_11

    .line 631
    const/4 v3, 0x0

    :goto_4
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_8

    .line 632
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v5

    if-eqz v11, :cond_a

    .line 633
    move v9, v3

    .line 638
    :cond_8
    const/4 v11, 0x1

    if-ne v2, v11, :cond_b

    .line 643
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C1: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 644
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 645
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 647
    :cond_9
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 631
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 649
    :cond_b
    if-eqz v1, :cond_c

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 655
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 656
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 657
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 659
    :cond_d
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 661
    :cond_e
    aget-object v11, v0, v9

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 666
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C2: Single SIM + Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 667
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 668
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 675
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C3: Single SIM + Non Data SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 676
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 677
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 679
    :cond_10
    const/4 v11, 0x0

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 684
    :cond_11
    const/4 v11, 0x2

    if-lt v4, v11, :cond_1

    .line 685
    const/4 v11, 0x1

    if-ne v2, v11, :cond_1b

    .line 686
    const-string v11, "newSIMSlot"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 689
    .local v7, "newSimStatus":I
    const/4 v6, 0x1

    .line 690
    .local v6, "isAllNewSim":Z
    const/4 v3, 0x0

    :goto_5
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_13

    .line 691
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v7

    if-nez v11, :cond_12

    .line 692
    const/4 v6, 0x0

    .line 690
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 696
    :cond_13
    if-eqz v6, :cond_14

    .line 701
    const-string v11, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 702
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 703
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 704
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 795
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :goto_6
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->checkOp01CapSwitch()Z

    move-result v11

    if-nez v11, :cond_1

    .line 797
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitImsi:Z

    .line 798
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 706
    .restart local v6    # "isAllNewSim":Z
    .restart local v7    # "newSimStatus":I
    :cond_14
    if-eqz v1, :cond_15

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 712
    :cond_15
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 713
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 714
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 715
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_6

    .line 717
    :cond_16
    const/4 v3, 0x0

    :goto_7
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_17

    .line 718
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 719
    move v9, v3

    .line 724
    :cond_17
    const/4 v11, -0x1

    if-eq v9, v11, :cond_1a

    .line 729
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C5: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 731
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 734
    const/4 v8, 0x0

    .line 735
    .local v8, "nonDefaultPhoneId":I
    if-nez v9, :cond_19

    .line 736
    const/4 v8, 0x1

    .line 740
    :goto_8
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_6

    .line 717
    .end local v8    # "nonDefaultPhoneId":I
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 738
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_19
    const/4 v8, 0x0

    goto :goto_8

    .line 746
    .end local v8    # "nonDefaultPhoneId":I
    :cond_1a
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 747
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 748
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 749
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto :goto_6

    .line 754
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :cond_1b
    if-eqz v1, :cond_1c

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 760
    :cond_1c
    const-string v11, "C8: Do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 762
    :cond_1d
    const/4 v3, 0x0

    :goto_9
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_1e

    .line 763
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 764
    move v9, v3

    .line 768
    :cond_1e
    const/4 v11, -0x1

    if-eq v9, v11, :cond_21

    .line 773
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C7: Multi SIM + All Old SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 775
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 778
    const/4 v8, 0x0

    .line 779
    .restart local v8    # "nonDefaultPhoneId":I
    if-nez v9, :cond_20

    .line 780
    const/4 v8, 0x1

    .line 784
    :goto_a
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_6

    .line 762
    .end local v8    # "nonDefaultPhoneId":I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 782
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_20
    const/4 v8, 0x0

    goto :goto_a

    .line 791
    .end local v8    # "nonDefaultPhoneId":I
    :cond_21
    const-string v11, "C8: Do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private subSelectorForOp02(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 485
    const/4 v6, -0x1

    .line 486
    .local v6, "phoneId":I
    const/4 v3, 0x0

    .line 487
    .local v3, "insertedSimCount":I
    const/4 v4, 0x0

    .line 488
    .local v4, "insertedStatus":I
    const-string v10, "simDetectStatus"

    invoke-virtual {p1, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 489
    .local v1, "detectedType":I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v10, [Ljava/lang/String;

    .line 491
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v10, "DataSubSelector for OP02"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 493
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v10, :cond_5

    .line 494
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v2

    .line 495
    aget-object v10, v0, v2

    if-eqz v10, :cond_0

    const-string v10, ""

    aget-object v11, v0, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 496
    :cond_0
    const-string v10, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 577
    :cond_1
    :goto_1
    return-void

    .line 499
    :cond_2
    const-string v10, "N/A"

    aget-object v11, v0, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 500
    add-int/lit8 v3, v3, 0x1

    .line 501
    shl-int v10, v12, v2

    or-int/2addr v4, v10

    .line 493
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clear mcc.mnc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 505
    if-nez v2, :cond_4

    .line 506
    const-string v7, "gsm.sim.ril.mcc.mnc"

    .line 510
    .local v7, "propStr":Ljava/lang/String;
    :goto_3
    const-string v10, ""

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 508
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gsm.sim.ril.mcc.mnc."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "propStr":Ljava/lang/String;
    goto :goto_3

    .line 514
    .end local v7    # "propStr":Ljava/lang/String;
    :cond_5
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    invoke-static {v10}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isAnySimLocked(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 515
    const-string v10, "DataSubSelector for OP02: do not switch because of sim locking"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 516
    iput-boolean v12, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIsNeedWaitUnlock:Z

    .line 517
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mIntent:Landroid/content/Intent;

    goto :goto_1

    .line 521
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", insertedStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 523
    const/4 v10, 0x4

    if-ne v1, v10, :cond_7

    .line 525
    const-string v10, "OP02 C0: Inserted status no change, do nothing"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 526
    :cond_7
    if-nez v3, :cond_8

    .line 531
    const-string v10, "OP02 C1: No SIM inserted, set data unset"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 532
    const/4 v10, -0x1

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    goto/16 :goto_1

    .line 533
    :cond_8
    if-ne v3, v12, :cond_c

    .line 534
    const/4 v2, 0x0

    :goto_4
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v10, :cond_9

    .line 535
    shl-int v10, v12, v2

    and-int/2addr v10, v4

    if-eqz v10, :cond_a

    .line 536
    move v6, v2

    .line 544
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OP02 C2: Single SIM: Set Default data to phone:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, v6}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 548
    const-string v8, "0"

    .line 549
    .local v8, "strEnabled":Ljava/lang/String;
    if-nez v6, :cond_b

    .line 550
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v10, "persist.radio.mobile.data"

    const-string v11, "0"

    invoke-static {v12, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 556
    :goto_5
    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v12, :cond_1

    .line 557
    invoke-direct {p0, v6, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 534
    .end local v8    # "strEnabled":Ljava/lang/String;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 553
    .restart local v8    # "strEnabled":Ljava/lang/String;
    :cond_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v10, "persist.radio.mobile.data"

    const-string v11, "0"

    invoke-static {v13, v10, v11}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 559
    .end local v8    # "strEnabled":Ljava/lang/String;
    :cond_c
    const/4 v10, 0x2

    if-lt v3, v10, :cond_1

    .line 564
    const-string v10, "OP02 C3: Multi SIM: Set Default data to phone1"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 570
    invoke-static {v12}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .line 571
    .local v5, "phone2SubId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 572
    .local v9, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_d

    invoke-virtual {v9, v5}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 573
    invoke-direct {p0, v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 575
    :cond_d
    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1
.end method

.method private subSelectorForOp09(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 960
    const/4 v9, -0x1

    .line 961
    .local v9, "phoneId":I
    const/4 v4, 0x0

    .line 962
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 963
    .local v5, "insertedStatus":I
    const-string v11, "simDetectStatus"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 964
    .local v2, "detectedType":I
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v11, [Ljava/lang/String;

    .line 966
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v11, "DataSubSelector for op09"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 968
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_4

    .line 969
    iget-object v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    .line 970
    aget-object v11, v0, v3

    if-eqz v11, :cond_0

    const-string v11, ""

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 971
    :cond_0
    const-string v11, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1136
    :cond_1
    :goto_1
    return-void

    .line 974
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currIccId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 975
    const-string v11, "N/A"

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 976
    add-int/lit8 v4, v4, 0x1

    .line 977
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    or-int/2addr v5, v11

    .line 968
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 981
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserted SIM count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", insertedStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 984
    const-string v11, "persist.radio.data.iccid"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Default data Iccid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 987
    if-nez v4, :cond_5

    .line 992
    const-string v11, "OP09 C0: No SIM inserted, set data unset"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 993
    const/4 v11, -0x1

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 994
    const/4 v3, 0x0

    :goto_2
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_1

    .line 995
    const/4 v11, 0x0

    invoke-direct {p0, v3, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 994
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 997
    :cond_5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_b

    .line 998
    const/4 v3, 0x0

    :goto_3
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_6

    .line 999
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v5

    if-eqz v11, :cond_7

    .line 1000
    move v9, v3

    .line 1005
    :cond_6
    const/4 v11, 0x4

    if-ne v2, v11, :cond_8

    .line 1006
    const-string v11, "OP09 C1: Single SIM unchange: do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 998
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1007
    :cond_8
    const/4 v11, 0x1

    if-ne v2, v11, :cond_9

    .line 1011
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OP09 C2: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1013
    const/4 v11, 0x1

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1018
    :cond_9
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1020
    const-string v11, "OP09 C3: Single SIM + Old SIM: check data enable"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1024
    const-string v10, "0"

    .line 1025
    .local v10, "strEnabled":Ljava/lang/String;
    if-nez v9, :cond_a

    .line 1026
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v11, 0x1

    const-string v12, "persist.radio.mobile.data"

    const-string v13, "0"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1032
    :goto_4
    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_1

    .line 1033
    const/4 v11, 0x1

    invoke-direct {p0, v9, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1029
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v11, 0x0

    const-string v12, "persist.radio.mobile.data"

    const-string v13, "0"

    invoke-static {v11, v12, v13}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 1036
    .end local v10    # "strEnabled":Ljava/lang/String;
    :cond_b
    const/4 v11, 0x2

    if-lt v4, v11, :cond_1

    .line 1037
    const/4 v11, 0x1

    if-ne v2, v11, :cond_15

    .line 1038
    const-string v11, "newSIMSlot"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1041
    .local v7, "newSimStatus":I
    const/4 v6, 0x1

    .line 1042
    .local v6, "isAllNewSim":Z
    const/4 v3, 0x0

    :goto_5
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_d

    .line 1043
    const/4 v11, 0x1

    shl-int/2addr v11, v3

    and-int/2addr v11, v7

    if-nez v11, :cond_c

    .line 1044
    const/4 v6, 0x0

    .line 1042
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1048
    :cond_d
    if-eqz v6, :cond_e

    .line 1053
    const-string v11, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1054
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1055
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1058
    :cond_e
    if-eqz v1, :cond_f

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1063
    :cond_f
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1064
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1066
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1068
    :cond_10
    const/4 v3, 0x0

    :goto_6
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_11

    .line 1069
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1070
    move v9, v3

    .line 1075
    :cond_11
    const/4 v11, -0x1

    if-eq v9, v11, :cond_14

    .line 1079
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C5: Multi SIM + New SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1083
    const/4 v8, 0x0

    .line 1084
    .local v8, "nonDefaultPhoneId":I
    if-nez v9, :cond_13

    .line 1085
    const/4 v8, 0x1

    .line 1089
    :goto_7
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1068
    .end local v8    # "nonDefaultPhoneId":I
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1087
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_13
    const/4 v8, 0x0

    goto :goto_7

    .line 1094
    .end local v8    # "nonDefaultPhoneId":I
    :cond_14
    const-string v11, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1095
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1097
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1102
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :cond_15
    if-eqz v1, :cond_16

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 1105
    :cond_16
    const-string v11, "C8: Do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1107
    :cond_17
    const/4 v3, 0x0

    :goto_8
    iget v11, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v11, :cond_18

    .line 1108
    aget-object v11, v0, v3

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 1109
    move v9, v3

    .line 1113
    :cond_18
    const/4 v11, -0x1

    if-eq v9, v11, :cond_1b

    .line 1117
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "C7: Multi SIM + All Old SIM + Default SIM: Set Default data to phone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1121
    const/4 v8, 0x0

    .line 1122
    .restart local v8    # "nonDefaultPhoneId":I
    if-nez v9, :cond_1a

    .line 1123
    const/4 v8, 0x1

    .line 1127
    :goto_9
    const/4 v11, 0x0

    invoke-direct {p0, v8, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1107
    .end local v8    # "nonDefaultPhoneId":I
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1125
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_1a
    const/4 v8, 0x0

    goto :goto_9

    .line 1131
    .end local v8    # "nonDefaultPhoneId":I
    :cond_1b
    const-string v11, "C8: Do nothing"

    invoke-direct {p0, v11}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private subSelectorForOp09C(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1328
    const/4 v9, -0x1

    .line 1329
    .local v9, "phoneId":I
    const/4 v4, 0x0

    .line 1330
    .local v4, "insertedSimCount":I
    const/4 v5, 0x0

    .line 1331
    .local v5, "insertedStatus":I
    const-string v10, "simDetectStatus"

    invoke-virtual {p1, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1332
    .local v2, "detectedType":I
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    new-array v0, v10, [Ljava/lang/String;

    .line 1334
    .local v0, "currIccId":[Ljava/lang/String;
    const-string v10, "DataSubSelector for op09 C"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1336
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v10, :cond_4

    .line 1337
    iget-object v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v3

    .line 1338
    aget-object v10, v0, v3

    if-eqz v10, :cond_0

    const-string v10, ""

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1339
    :cond_0
    const-string v10, "error: iccid not found, wait for next sub ready"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1462
    :cond_1
    :goto_1
    return-void

    .line 1342
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currIccId["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1343
    const-string v10, "N/A"

    aget-object v11, v0, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1344
    add-int/lit8 v4, v4, 0x1

    .line 1345
    shl-int v10, v13, v3

    or-int/2addr v5, v10

    .line 1336
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1348
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inserted SIM count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", insertedStatus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1351
    const-string v10, "persist.radio.data.iccid"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1352
    .local v1, "defaultIccid":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Default data Iccid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1354
    if-nez v4, :cond_5

    .line 1355
    const-string v10, "OP09 C0: No SIM inserted, do nothing."

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1356
    :cond_5
    if-ne v4, v13, :cond_c

    .line 1357
    const/4 v3, 0x0

    :goto_2
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v10, :cond_6

    .line 1358
    shl-int v10, v13, v3

    and-int/2addr v10, v5

    if-eqz v10, :cond_7

    .line 1359
    move v9, v3

    .line 1364
    :cond_6
    const/4 v10, 0x4

    if-ne v2, v10, :cond_8

    .line 1365
    const-string v10, "OP09 C1: Single SIM unchange: do nothing"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1357
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1366
    :cond_8
    if-ne v2, v13, :cond_a

    .line 1370
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OP09 C2: Single SIM + New SIM: Set Default data to phone:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1371
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1372
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1374
    :cond_9
    invoke-direct {p0, v9, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1379
    :cond_a
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1380
    invoke-direct {p0, v9}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1382
    :cond_b
    const-string v10, "OP09 C3: Single SIM + Old SIM: set as default data."

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1384
    :cond_c
    const/4 v10, 0x2

    if-lt v4, v10, :cond_1

    .line 1385
    if-ne v2, v13, :cond_19

    .line 1386
    const-string v10, "newSIMSlot"

    invoke-virtual {p1, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1389
    .local v7, "newSimStatus":I
    const/4 v6, 0x1

    .line 1390
    .local v6, "isAllNewSim":Z
    const/4 v3, 0x0

    :goto_3
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v10, :cond_e

    .line 1391
    shl-int v10, v13, v3

    and-int/2addr v10, v7

    if-nez v10, :cond_d

    .line 1392
    const/4 v6, 0x0

    .line 1390
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1396
    :cond_e
    if-eqz v6, :cond_10

    .line 1401
    const-string v10, "C4: Multi SIM + All New SIM: Set 34G to sub1"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1402
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1403
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1405
    :cond_f
    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1406
    invoke-direct {p0, v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1408
    :cond_10
    if-eqz v1, :cond_11

    const-string v10, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1413
    :cond_11
    const-string v10, "C6: Multi SIM + New SIM + Non Default SIM: No Change"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1414
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1415
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1417
    :cond_12
    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1418
    invoke-direct {p0, v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1420
    :cond_13
    const/4 v3, 0x0

    :goto_4
    iget v10, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v3, v10, :cond_14

    .line 1421
    aget-object v10, v0, v3

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1422
    move v9, v3

    .line 1427
    :cond_14
    const/4 v10, -0x1

    if-eq v9, v10, :cond_17

    .line 1431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "C5: Multi SIM + New SIM + Default SIM: Keep Set Default data to phone:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1434
    const/4 v8, 0x0

    .line 1435
    .local v8, "nonDefaultPhoneId":I
    if-nez v9, :cond_16

    .line 1436
    const/4 v8, 0x1

    .line 1440
    :goto_5
    invoke-direct {p0, v8, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1420
    .end local v8    # "nonDefaultPhoneId":I
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1438
    .restart local v8    # "nonDefaultPhoneId":I
    :cond_16
    const/4 v8, 0x0

    goto :goto_5

    .line 1445
    .end local v8    # "nonDefaultPhoneId":I
    :cond_17
    const-string v10, "C7: Multi SIM + New SIM + Non Default SIM: set to sim1."

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1446
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 1447
    invoke-direct {p0, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDefaultData(I)V

    .line 1449
    :cond_18
    invoke-direct {p0, v12, v13}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1450
    invoke-direct {p0, v13, v12}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    goto/16 :goto_1

    .line 1458
    .end local v6    # "isAllNewSim":Z
    .end local v7    # "newSimStatus":I
    :cond_19
    const-string v10, "C8: Multi SIM + All Old SIM :set as previous default data"

    invoke-direct {p0, v10}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->loge(Ljava/lang/String;)V

    .line 1459
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOm(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private subSelectorForSvlte(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1199
    const-string v1, "OP09"

    sget-object v2, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mOperatorSpec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1200
    invoke-static {v3}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->isSimContainsCdmaApp(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    const-string v1, "CDMA sim is inserted in slot1, always set to SIM1"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1202
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    .line 1233
    :goto_0
    return-void

    .line 1205
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getRadioTechnologyMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1209
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-array v0, v1, [I

    .line 1210
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1212
    aget v1, v0, v3

    if-nez v1, :cond_1

    .line 1213
    const-string v1, "SIM 1 is empty, don\'t change capability"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    :cond_1
    const-string v1, "SIM 1 is inserted, change capability"

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1216
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setCapability(I)Z

    goto :goto_0

    .line 1221
    .end local v0    # "cardType":[I
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    goto :goto_0

    .line 1229
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->subSelectorForOmLenovo(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private turnOffNewSimData(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1249
    const-string v5, "simDetectStatus"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1250
    .local v1, "detectedType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "turnOffNewSimData detectedType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1253
    if-ne v1, v8, :cond_1

    .line 1254
    const-string v5, "newSIMSlot"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1257
    .local v4, "newSimSlot":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newSimSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1259
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_1

    .line 1260
    shl-int v5, v8, v2

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    .line 1261
    const-string v5, "persist.radio.data.iccid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, "defaultIccid":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1263
    .local v3, "newSimIccid":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detect NEW SIM, turn off phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1265
    invoke-direct {p0, v2, v7}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->setDataEnabled(IZ)V

    .line 1259
    .end local v0    # "defaultIccid":Ljava/lang/String;
    .end local v3    # "newSimIccid":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1270
    .end local v2    # "i":I
    .end local v4    # "newSimSlot":I
    :cond_1
    return-void
.end method

.method private updateDataEnableProperty()V
    .locals 7

    .prologue
    .line 1168
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 1169
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 1170
    .local v0, "dataEnabled":Z
    const-string v1, "0"

    .line 1171
    .local v1, "dataOnIccid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1173
    .local v3, "subId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->mPhoneNum:I

    if-ge v2, v5, :cond_3

    .line 1175
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    .line 1176
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1177
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvlteSubIdBySubId(I)I

    move-result v3

    .line 1180
    :cond_0
    if-eqz v4, :cond_1

    .line 1181
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    .line 1184
    :cond_1
    if-eqz v0, :cond_2

    .line 1185
    iget-object v5, p0, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->PROPERTY_ICCID:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1191
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUserDataProperty:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/internal/telephony/dataconnection/DataSubSelector;->log(Ljava/lang/String;)V

    .line 1192
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v5, "persist.radio.mobile.data"

    invoke-static {v2, v5, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1187
    :cond_2
    const-string v1, "0"

    goto :goto_1

    .line 1195
    :cond_3
    return-void
.end method
