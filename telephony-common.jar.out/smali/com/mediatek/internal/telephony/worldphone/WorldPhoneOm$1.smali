.class Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    const-string v14, "[Receiver]+"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "action":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Action: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 240
    const-string v14, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 241
    const-string v14, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, "simStatus":Ljava/lang/String;
    const-string v14, "slot"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 243
    .local v11, "slotId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 244
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " simStatus: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " sMajorSim:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 245
    const-string v14, "IMSI"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 246
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$202(Lcom/android/internal/telephony/uicc/UiccController;)Lcom/android/internal/telephony/uicc/UiccController;

    .line 247
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$200()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 248
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$200()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v15

    aput-object v15, v14, v11

    .line 253
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v14

    aget-object v14, v14, v11

    if-eqz v14, :cond_3

    .line 254
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$400()[Ljava/lang/String;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccRecordsInstance:[Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$300()[Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v15

    aget-object v15, v15, v11

    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    .line 259
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getIccCardType(I)I
    invoke-static {v15, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$600(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)I

    move-result v15

    aput v15, v14, v11

    .line 260
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sImsi["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$400()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 263
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$700()Z

    move-result v14

    if-eqz v14, :cond_9

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    if-ne v11, v14, :cond_9

    .line 264
    const-string v14, "Major SIM"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$400()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v11

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$900(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$802(I)I

    .line 266
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1000()[Z

    move-result-object v14

    aget-boolean v14, v14, v11

    if-eqz v14, :cond_0

    .line 267
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1000()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 268
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$800()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    .line 269
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v15, 0x65

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 280
    :cond_0
    :goto_0
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300()[Z

    move-result-object v14

    aget-boolean v14, v14, v11

    if-eqz v14, :cond_1

    .line 281
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 282
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    .line 283
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMSI fot slot"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " now ready, resuming PLMN:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with ID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1500()[I

    move-result-object v15

    aget v15, v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->resumeCampingProcedure(I)V
    invoke-static {v14, v11}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1600(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    .line 518
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_1
    :goto_1
    const-string v14, "[Receiver]-"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 519
    :goto_2
    return-void

    .line 250
    .restart local v10    # "simStatus":Ljava/lang/String;
    .restart local v11    # "slotId":I
    :cond_2
    const-string v14, "Null sUiccController"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 256
    :cond_3
    const-string v14, "Null sIccRecordsInstance"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 271
    :cond_4
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRegion:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1100()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v15, 0x64

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto :goto_0

    .line 274
    :cond_5
    const-string v14, "Region unknown"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_6
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$800()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_7

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$800()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 277
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/16 v15, 0x64

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)V

    goto/16 :goto_0

    .line 287
    :cond_8
    const-string v14, "sNwPlmnStrings is Null"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 291
    :cond_9
    const-string v14, "Not major SIM or in maual selection mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$400()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v11

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$900(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;Ljava/lang/String;)I

    .line 293
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300()[Z

    move-result-object v14

    aget-boolean v14, v14, v11

    if-eqz v14, :cond_1

    .line 294
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 295
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IMSI fot slot"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " now ready, resuming with ID:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1500()[I

    move-result-object v15

    aget v15, v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 297
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1700()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    aget-object v14, v14, v11

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendId:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1500()[I

    move-result-object v15

    aget v15, v15, v11

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->setResumeRegistration(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 300
    :cond_a
    const-string v14, "ABSENT"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 301
    const/4 v14, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$400()[Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    aput-object v15, v14, v11

    .line 303
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1000()[Z

    move-result-object v14

    const/4 v15, 0x1

    aput-boolean v15, v14, v11

    .line 304
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1900()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 305
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sSuspendWaitImsi:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1300()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    .line 306
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[I

    move-result-object v14

    const/4 v15, 0x0

    aput v15, v14, v11

    .line 307
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    if-ne v11, v14, :cond_b

    .line 308
    const-string v14, "Major SIM removed, no world phone service"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2000(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 310
    const/4 v14, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sUserType:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$802(I)I

    .line 311
    const/4 v14, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDenyReason:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2102(I)I

    .line 312
    const/16 v14, -0x63

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    goto/16 :goto_1

    .line 314
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not major SIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 317
    .end local v10    # "simStatus":Ljava/lang/String;
    .end local v11    # "slotId":I
    :cond_c
    const-string v14, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2202(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 319
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 320
    const-string v14, "slot"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 321
    .restart local v11    # "slotId":I
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2402(I)I

    .line 323
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilVoiceRegState()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2502(I)I

    .line 324
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2602(I)I

    .line 325
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2702(I)I

    .line 326
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRegState()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2802(I)I

    .line 327
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2902(I)I

    .line 328
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "slotId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIccCardType:[I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$500()[I

    move-result-object v15

    aget v15, v15, v11

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->iccCardTypeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 329
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sMajorSim: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->getActiveModemType()I

    move-result v14

    invoke-static {v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->modemToString(I)Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 331
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sPlmnSs: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 332
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sVoiceRegState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sVoiceRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2400()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 333
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRilVoiceRegState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2500()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 334
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRilVoiceRadioTech: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilVoiceRadioTechnology:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2600()I

    move-result v15

    invoke-static {v15}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 335
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sDataRegState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDataRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2700()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 336
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRilDataRegState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRegState:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2800()I

    move-result v15

    invoke-static {v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 337
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRilDataRadioTech: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sServiceState:Landroid/telephony/ServiceState;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2200()Landroid/telephony/ServiceState;

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRilDataRadioTechnology:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2900()I

    move-result v15

    invoke-static {v15}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 338
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sIsAutoSelectEnable: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$700()Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 339
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sRadioTechModeForWp: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3000()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 343
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    if-ne v11, v14, :cond_1

    .line 344
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsAutoSelectEnable:Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$700()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isNoService()Z
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3100(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 346
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleNoService()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3200(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 347
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 348
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->removeModemStandByTimer()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2000(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    .line 350
    const-string v14, "reset sIsInvalidSim"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 351
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1900()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    goto/16 :goto_1

    .line 354
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->isInService()Z
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3300(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 355
    const-string v14, "reset sIsInvalidSim in manual mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 356
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnSs:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$2300()Ljava/lang/String;

    move-result-object v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1900()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v11

    goto/16 :goto_1

    .line 362
    .end local v11    # "slotId":I
    :cond_f
    const-string v14, "Null sServiceState"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 364
    :cond_10
    const-string v14, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "ci":Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v14

    if-nez v14, :cond_11

    .line 368
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sCi:[Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1700()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v2, v14, v15

    .line 372
    :goto_3
    if-nez v2, :cond_12

    .line 373
    const-string v14, "SHUTDOWN_IPO getActiveCi fail, switch not executed!"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 370
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v15, 0x0

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->getSvlteActiveCi(I)Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v14, v15}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3400(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    goto :goto_3

    .line 378
    :cond_12
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3500()I

    move-result v14

    const/16 v15, 0x64

    if-ne v14, v15, :cond_14

    .line 379
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 380
    const/4 v14, 0x5

    invoke-static {v2, v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 382
    const-string v14, "Reload to FDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 384
    :cond_13
    const/4 v14, 0x3

    invoke-static {v2, v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 386
    const-string v14, "Reload to WG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 388
    :cond_14
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sDefaultBootuUpModem:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3500()I

    move-result v14

    const/16 v15, 0x65

    if-ne v14, v15, :cond_1

    .line 389
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isLteSupport()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 390
    const/4 v14, 0x6

    invoke-static {v2, v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 392
    const-string v14, "Reload to TDD CSFB modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 394
    :cond_15
    const/4 v14, 0x4

    invoke-static {v2, v14}, Lcom/mediatek/internal/telephony/ModemSwitchHandler;->reloadModem(Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 396
    const-string v14, "Reload to TG modem"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 399
    .end local v2    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_16
    const-string v14, "android.intent.action.ACTION_ADB_SWITCH_MODEM"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 400
    const-string v14, "mdType"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 401
    .local v13, "toModem":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "toModem: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 402
    const/4 v14, 0x3

    if-eq v13, v14, :cond_17

    const/4 v14, 0x4

    if-eq v13, v14, :cond_17

    const/4 v14, 0x5

    if-eq v13, v14, :cond_17

    const/4 v14, 0x6

    if-ne v13, v14, :cond_18

    .line 406
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 408
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v13}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->setModemSelectionMode(II)V

    goto/16 :goto_1

    .line 410
    .end local v13    # "toModem":I
    :cond_19
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 411
    const-string v14, "state"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 412
    const-string v14, "Leave flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 413
    const/4 v14, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sLastPlmn:Ljava/lang/String;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3600()I

    move-result v14

    if-ge v7, v14, :cond_1

    .line 415
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sIsInvalidSim:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1900()[Z

    move-result-object v14

    const/4 v15, 0x0

    aput-boolean v15, v14, v7

    .line 414
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 418
    .end local v7    # "i":I
    :cond_1a
    const-string v14, "Enter flight mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 419
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->PROJECT_SIM_NUM:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3600()I

    move-result v14

    if-ge v7, v14, :cond_1

    .line 420
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sFirstSelect:[Z
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1000()[Z

    move-result-object v14

    const/4 v15, 0x1

    aput-boolean v15, v14, v7

    .line 419
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 423
    .end local v7    # "i":I
    :cond_1b
    const-string v14, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 425
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 428
    :cond_1c
    const-string v14, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_START"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 429
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 430
    const/4 v14, 0x0

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3002(I)I

    goto/16 :goto_1

    .line 432
    :cond_1d
    const/4 v14, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3002(I)I

    goto/16 :goto_1

    .line 434
    :cond_1e
    const-string v14, "com.mediatek.phone.ACTION_SET_RADIO_TECHNOLOGY_DONE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 435
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->isCdmaLteDcSupport()Z

    move-result v14

    if-eqz v14, :cond_21

    .line 436
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v9

    .line 437
    .local v9, "majorySim":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v12

    .line 438
    .local v12, "svlteModeSlot":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "majorySim="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " svlteModeSlot="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 439
    const/16 v14, -0x63

    if-eq v9, v14, :cond_20

    .line 440
    if-ne v12, v9, :cond_1f

    .line 441
    const/4 v14, 0x2

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3002(I)I

    .line 449
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleSimSwitched()V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3700(Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 443
    :cond_1f
    const/4 v14, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3002(I)I

    goto :goto_6

    .line 446
    :cond_20
    const/4 v14, 0x2

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3002(I)I

    goto :goto_6

    .line 451
    .end local v9    # "majorySim":I
    .end local v12    # "svlteModeSlot":I
    :cond_21
    const/4 v14, 0x1

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sRadioTechModeForWp:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3002(I)I

    goto/16 :goto_1

    .line 453
    :cond_22
    const-string v14, "android.intent.action.ACTION_TEST_WORLDPHOE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 454
    const-string v14, "FAKE_USER_TYPE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 455
    .local v5, "fakeUserType":I
    const-string v14, "EXTRA_FAKE_REGION"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 456
    .local v4, "fakeRegion":I
    const/4 v6, 0x0

    .line 458
    .local v6, "hasChanged":Z
    if-nez v5, :cond_23

    if-nez v4, :cond_23

    .line 459
    const-string v14, "Leave ADB Test mode"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 461
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3800()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 462
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 463
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4000()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 464
    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->loadDefaultData()V
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4100()V

    goto/16 :goto_1

    .line 466
    :cond_23
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneUtil;->getMajorSim()I

    move-result v14

    # setter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$102(I)I

    .line 467
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    const/16 v15, -0x63

    if-eq v14, v15, :cond_29

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_29

    .line 470
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sImsi:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$400()[Ljava/lang/String;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMajorSim:I
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$100()I

    move-result v15

    aget-object v8, v14, v15

    .line 471
    .local v8, "imsi":Ljava/lang/String;
    if-eqz v8, :cond_25

    const-string v14, ""

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    .line 472
    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 473
    packed-switch v5, :pswitch_data_0

    .line 485
    :pswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown fakeUserType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 491
    :goto_7
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sNwPlmnStrings:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$1400()[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v3, v14, v15

    .line 492
    .local v3, "currentMcc":Ljava/lang/String;
    if-eqz v3, :cond_24

    const-string v14, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x5

    if-ge v14, v15, :cond_26

    .line 493
    :cond_24
    const-string v14, "Invalid sNwPlmnStrings"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 510
    .end local v3    # "currentMcc":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    :goto_8
    if-eqz v6, :cond_1

    .line 511
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sPlmnType1:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3800()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 512
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sPlmnType3:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3900()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 513
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sMccDomestic:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4000()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm$1;->this$0:Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;

    invoke-virtual {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->handleRadioTechModeSwitch()V

    goto/16 :goto_1

    .line 475
    .restart local v8    # "imsi":Ljava/lang/String;
    :pswitch_1
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType1:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3800()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const/4 v6, 0x1

    .line 477
    goto :goto_7

    .line 480
    :pswitch_2
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sPlmnType3:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$3900()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const/4 v6, 0x1

    .line 482
    goto/16 :goto_7

    .line 488
    :cond_25
    const-string v14, "Imsi of sMajorSim is unknown"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 495
    .restart local v3    # "currentMcc":Ljava/lang/String;
    :cond_26
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 496
    const/4 v14, 0x1

    if-ne v4, v14, :cond_27

    .line 497
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4000()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    const/4 v6, 0x1

    goto/16 :goto_8

    .line 499
    :cond_27
    const/4 v14, 0x2

    if-ne v4, v14, :cond_28

    .line 500
    # getter for: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->sMccDomestic:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$4000()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 501
    const/4 v6, 0x1

    goto/16 :goto_8

    .line 503
    :cond_28
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown fakeRegion:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 507
    .end local v3    # "currentMcc":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    :cond_29
    const-string v14, "sMajorSim is Unknown or Capability OFF"

    # invokes: Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v14}, Lcom/mediatek/internal/telephony/worldphone/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
