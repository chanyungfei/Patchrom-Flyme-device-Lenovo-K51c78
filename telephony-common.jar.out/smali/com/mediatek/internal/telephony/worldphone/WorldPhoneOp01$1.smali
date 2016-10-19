.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOp01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x65

    const/16 v10, 0x64

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 194
    const-string v5, "[Receiver]+"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 198
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 199
    const-string v5, "ss"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "simStatus":Ljava/lang/String;
    const-string v5, "slot"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 201
    .local v3, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$102(I)I

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sMajorSim:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 203
    const-string v5, "IMSI"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 204
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v5

    const/16 v6, -0x63

    if-ne v5, v6, :cond_0

    .line 205
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$102(I)I

    .line 207
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$202(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 208
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$200()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 209
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$200()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    aput-object v6, v5, v3

    .line 214
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    aget-object v5, v5, v3

    if-eqz v5, :cond_5

    .line 215
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$400()[Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 220
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$500()[I

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getIccCardType(I)I
    invoke-static {v6, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$600(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)I

    move-result v6

    aput v6, v5, v3

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sImsi["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$400()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 224
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$700()Z

    move-result v5

    if-eqz v5, :cond_b

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v5

    if-ne v3, v5, :cond_b

    .line 225
    const-string v5, "Major SIM"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 226
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$400()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$900(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$802(I)I

    .line 227
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1000()[Z

    move-result-object v5

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_2

    .line 228
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1000()[Z

    move-result-object v5

    aput-boolean v7, v5, v3

    .line 229
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$800()I

    move-result v5

    if-eq v5, v8, :cond_1

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$800()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 230
    :cond_1
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1102(I)I

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sSwitchModemCauseType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1100()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 232
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1200()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 233
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v5, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    .line 249
    :cond_2
    :goto_0
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1400()[Z

    move-result-object v5

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_3

    .line 250
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1400()[Z

    move-result-object v5

    aput-boolean v7, v5, v3

    .line 251
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1500()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI fot slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now ready, resuming PLMN:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sNwPlmnStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1500()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1600()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 254
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->resumeCampingProcedure(I)V
    invoke-static {v5, v3}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    .line 370
    .end local v2    # "simStatus":Ljava/lang/String;
    .end local v3    # "slotId":I
    :cond_3
    :goto_1
    const-string v5, "[Receiver]-"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 371
    :goto_2
    return-void

    .line 211
    .restart local v2    # "simStatus":Ljava/lang/String;
    .restart local v3    # "slotId":I
    :cond_4
    const-string v5, "Null sUiccController"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :cond_5
    const-string v5, "Null sIccRecordsInstance"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 234
    :cond_6
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRegion:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1200()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 235
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v5, v10}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    goto :goto_0

    .line 237
    :cond_7
    const-string v5, "Region unknown"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_8
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$800()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 240
    const/16 v5, 0xff

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1102(I)I

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sSwitchModemCauseType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSwitchModemCauseType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1100()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 242
    const-string v5, "ro.mtk_world_phone_policy"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 243
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v5, v10}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    goto/16 :goto_0

    .line 245
    :cond_9
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v5, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;I)V

    goto/16 :goto_0

    .line 256
    :cond_a
    const-string v5, "sNwPlmnStrings is Null"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :cond_b
    const-string v5, "Not major SIM"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$400()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I
    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$900(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;Ljava/lang/String;)I

    .line 262
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1400()[Z

    move-result-object v5

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_3

    .line 263
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1400()[Z

    move-result-object v5

    aput-boolean v7, v5, v3

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI fot slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " now ready, resuming with ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1600()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 266
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1800()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    aget-object v5, v5, v3

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1600()[I

    move-result-object v6

    aget v6, v6, v3

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 269
    :cond_c
    const-string v5, "ABSENT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$400()[Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    aput-object v6, v5, v3

    .line 272
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1000()[Z

    move-result-object v5

    aput-boolean v8, v5, v3

    .line 273
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2000()[Z

    move-result-object v5

    aput-boolean v7, v5, v3

    .line 274
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1400()[Z

    move-result-object v5

    aput-boolean v7, v5, v3

    .line 275
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$500()[I

    move-result-object v5

    aput v7, v5, v3

    .line 276
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v5

    if-ne v3, v5, :cond_d

    .line 277
    const-string v5, "Major SIM removed, no world phone service"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    .line 279
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sUserType:I
    invoke-static {v7}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$802(I)I

    .line 280
    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDenyReason:I
    invoke-static {v8}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2202(I)I

    .line 281
    const/16 v5, -0x63

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$102(I)I

    goto/16 :goto_1

    .line 283
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not major SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    .end local v2    # "simStatus":Ljava/lang/String;
    .end local v3    # "slotId":I
    :cond_e
    const-string v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2302(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 288
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 289
    const-string v5, "slot"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 290
    .restart local v3    # "slotId":I
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2402(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2502(I)I

    .line 292
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2602(I)I

    .line 293
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRadioTechnology:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2702(I)I

    .line 294
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2802(I)I

    .line 295
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2902(I)I

    .line 296
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRadioTechnology:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3002(I)I

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$500()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sMajorSim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sPlmnSs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sVoiceRegState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sVoiceRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2500()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sRilVoiceRegState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2600()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sRilVoiceRadioTech: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilVoiceRadioTechnology:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2700()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sDataRegState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDataRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2800()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sRilDataRegState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2900()I

    move-result v6

    invoke-static {v6}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sRilDataRadioTech: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2300()Landroid/telephony/ServiceState;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sRilDataRadioTechnology:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3000()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sIsAutoSelectEnable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$700()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 310
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$700()Z

    move-result v5

    if-eqz v5, :cond_3

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$100()I

    move-result v5

    if-ne v3, v5, :cond_3

    .line 311
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isNoService()Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 312
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleNoService()V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    goto/16 :goto_1

    .line 313
    :cond_f
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->isInService()Z
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sPlmnSs:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2400()Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->removeModemStandByTimer()V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    .line 316
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2000()[Z

    move-result-object v5

    aput-boolean v7, v5, v3

    goto/16 :goto_1

    .line 320
    .end local v3    # "slotId":I
    :cond_10
    const-string v5, "Null sServiceState"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 322
    :cond_11
    const-string v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 323
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3400()I

    move-result v5

    if-ne v5, v10, :cond_13

    .line 324
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 325
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1800()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    aget-object v5, v5, v7

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 326
    const-string v5, "Reload to FDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 328
    :cond_12
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1800()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-static {v5, v9}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 329
    const-string v5, "Reload to WG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 331
    :cond_13
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3400()I

    move-result v5

    if-ne v5, v11, :cond_3

    .line 332
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 333
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1800()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    aget-object v5, v5, v7

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 334
    const-string v5, "Reload to TDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 336
    :cond_14
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1800()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    aget-object v5, v5, v7

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 337
    const-string v5, "Reload to TG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 340
    :cond_15
    const-string v5, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 341
    const-string v5, "mdType"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 342
    .local v4, "toModem":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toModem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 343
    if-eq v4, v9, :cond_16

    const/4 v5, 0x4

    if-eq v4, v5, :cond_16

    const/4 v5, 0x5

    if-eq v4, v5, :cond_16

    const/4 v5, 0x6

    if-ne v4, v5, :cond_17

    .line 347
    :cond_16
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-virtual {v5, v7, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 349
    :cond_17
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    invoke-virtual {v5, v8, v4}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 351
    .end local v4    # "toModem":I
    :cond_18
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 352
    const-string v5, "state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_19

    .line 353
    const-string v5, "Leave flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 354
    const/4 v5, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sLastPlmn:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3500()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 356
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$2000()[Z

    move-result-object v5

    aput-boolean v7, v5, v1

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 359
    .end local v1    # "i":I
    :cond_19
    const-string v5, "Enter flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$000(Ljava/lang/String;)V

    .line 360
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3500()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 361
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$1000()[Z

    move-result-object v5

    aput-boolean v8, v5, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 364
    .end local v1    # "i":I
    :cond_1a
    const-string v5, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 366
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v5

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->sMajorSim:I
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$102(I)I

    .line 368
    iget-object v5, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->handleSimSwitched()V
    invoke-static {v5}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;->access$3600(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOp01;)V

    goto/16 :goto_1
.end method
