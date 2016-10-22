.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final INTENT_ETWS_ALARM:Ljava/lang/String; = "com.android.internal.telephony.etws"

.field private static final VDBG:Z


# instance fields
.field private mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

.field private mEtwsAlarmIntent:Landroid/app/PendingIntent;

.field private final mEtwsPrimaryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x0

    .line 77
    const-string v1, "GsmCellBroadcastHandler"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 65
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 70
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 73
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    .line 396
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$1;-><init>(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsPrimaryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnEtwsNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    new-instance v1, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    invoke-direct {v1, p2}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.telephony.etws"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsPrimaryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;)Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    return-object v0
.end method

.method private handleEtwsPdu([BLjava/lang/String;)Landroid/telephony/SmsCbMessage;
    .locals 9
    .param p1, "pdu"    # [B
    .param p2, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 340
    if-eqz p1, :cond_0

    array-length v6, p1

    const/16 v7, 0x38

    if-eq v6, v7, :cond_1

    .line 341
    :cond_0
    const-string v6, "invalid ETWS PDU"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 342
    const/4 v6, 0x0

    .line 370
    :goto_0
    return-object v6

    .line 345
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v2, p1, v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([BZ)V

    .line 346
    .local v2, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 347
    .local v0, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v3

    .line 348
    .local v3, "lac":I
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 351
    .local v1, "cid":I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 363
    :pswitch_0
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, p2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 367
    .local v4, "location":Landroid/telephony/SmsCbLocation;
    :goto_1
    new-array v5, v8, [[B

    .line 368
    .local v5, "pdus":[[B
    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 370
    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v6

    goto :goto_0

    .line 353
    .end local v4    # "location":Landroid/telephony/SmsCbLocation;
    .end local v5    # "pdus":[[B
    :pswitch_1
    new-instance v4, Landroid/telephony/SmsCbLocation;

    const/4 v6, -0x1

    invoke-direct {v4, p2, v3, v6}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 354
    .restart local v4    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 358
    .end local v4    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, p2, v3, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 359
    .restart local v4    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_1

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 22
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 135
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v20

    check-cast v0, [B

    move-object/from16 v19, v0

    .line 153
    .local v19, "receivedPdu":[B
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v8, v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([BZ)V

    .line 155
    .local v8, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, "plmn":Ljava/lang/String;
    const/4 v12, -0x1

    .line 158
    .local v12, "lac":I
    const/4 v4, -0x1

    .line 159
    .local v4, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    .line 163
    .local v5, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v5, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 164
    move-object v0, v5

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    .line 165
    .local v3, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v12

    .line 166
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    .line 170
    .end local v3    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 182
    :pswitch_0
    new-instance v14, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 187
    .local v14, "location":Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v15

    .line 188
    .local v15, "pageCount":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_5

    .line 190
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v6, v8, v14}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 193
    .local v6, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[B

    .line 195
    .local v17, "pdus":[[B
    if-nez v17, :cond_1

    .line 198
    new-array v0, v15, [[B

    move-object/from16 v17, v0

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    aput-object v19, v17, v20

    .line 206
    move-object/from16 v2, v17

    .local v2, "arr$":[[B
    array-length v13, v2

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_3

    aget-object v16, v2, v9

    .line 207
    .local v16, "pdu":[B
    if-nez v16, :cond_2

    .line 209
    const/16 v20, 0x0

    .line 248
    .end local v2    # "arr$":[[B
    .end local v4    # "cid":I
    .end local v5    # "cl":Landroid/telephony/CellLocation;
    .end local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v9    # "i$":I
    .end local v12    # "lac":I
    .end local v13    # "len$":I
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    .end local v15    # "pageCount":I
    .end local v16    # "pdu":[B
    .end local v17    # "pdus":[[B
    .end local v18    # "plmn":Ljava/lang/String;
    .end local v19    # "receivedPdu":[B
    :goto_2
    return-object v20

    .line 172
    .restart local v4    # "cid":I
    .restart local v5    # "cl":Landroid/telephony/CellLocation;
    .restart local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v12    # "lac":I
    .restart local v18    # "plmn":Ljava/lang/String;
    .restart local v19    # "receivedPdu":[B
    :pswitch_1
    new-instance v14, Landroid/telephony/SmsCbLocation;

    const/16 v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v14, v0, v12, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 173
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 177
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v14, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v12, v4}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 178
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 206
    .restart local v2    # "arr$":[[B
    .restart local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .restart local v9    # "i$":I
    .restart local v13    # "len$":I
    .restart local v15    # "pageCount":I
    .restart local v16    # "pdu":[B
    .restart local v17    # "pdus":[[B
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 214
    .end local v16    # "pdu":[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v2    # "arr$":[[B
    .end local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 226
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_4
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 227
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 229
    .local v10, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v12, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v20

    if-nez v20, :cond_4

    .line 230
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 246
    .end local v4    # "cid":I
    .end local v5    # "cl":Landroid/telephony/CellLocation;
    .end local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v10    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v12    # "lac":I
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    .end local v15    # "pageCount":I
    .end local v17    # "pdus":[[B
    .end local v18    # "plmn":Ljava/lang/String;
    .end local v19    # "receivedPdu":[B
    :catch_0
    move-exception v7

    .line 247
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v20, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    const/16 v20, 0x0

    goto :goto_2

    .line 217
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "cid":I
    .restart local v5    # "cl":Landroid/telephony/CellLocation;
    .restart local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v12    # "lac":I
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v15    # "pageCount":I
    .restart local v18    # "plmn":Ljava/lang/String;
    .restart local v19    # "receivedPdu":[B
    :cond_5
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 218
    .restart local v17    # "pdus":[[B
    const/16 v20, 0x0

    aput-object v19, v17, v20

    goto :goto_3

    .line 235
    .restart local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_6
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v20

    const/16 v21, 0x1100

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v20

    const/16 v21, 0x1101

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v20

    const/16 v21, 0x1102

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v20

    const/16 v21, 0x1103

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v20

    const/16 v21, 0x1104

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 240
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->stopEtwsAlarm()V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->startEtwsAlarm()V

    .line 244
    :cond_8
    move-object/from16 v0, v17

    invoke-static {v8, v14, v0}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    goto/16 :goto_2

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 107
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 108
    return-object v0
.end method


# virtual methods
.method protected handleEtwsPrimaryNotification(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 310
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Landroid/os/AsyncResult;

    if-eqz v5, :cond_1

    .line 312
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 313
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/internal/telephony/EtwsNotification;

    .line 314
    .local v3, "noti":Lcom/mediatek/internal/telephony/EtwsNotification;
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/EtwsNotification;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->containDuplicatedEtwsNotification(Lcom/mediatek/internal/telephony/EtwsNotification;)Z

    move-result v2

    .line 317
    .local v2, "isDuplicated":Z
    if-nez v2, :cond_0

    .line 319
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mCellBroadcastFwkExt:Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;

    invoke-virtual {v5, v3}, Lcom/mediatek/internal/telephony/CellBroadcastFwkExt;->openEtwsChannel(Lcom/mediatek/internal/telephony/EtwsNotification;)V

    .line 322
    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/EtwsNotification;->getEtwsPdu()[B

    move-result-object v5

    iget-object v6, v3, Lcom/mediatek/internal/telephony/EtwsNotification;->plmnId:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleEtwsPdu([BLjava/lang/String;)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    .line 323
    .local v1, "etwsPrimary":Landroid/telephony/SmsCbMessage;
    if-eqz v1, :cond_1

    .line 324
    const-string v5, "ETWS Primary dispatch to App and open the necessary channels and start timer"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;Z)V

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->stopEtwsAlarm()V

    .line 327
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->startEtwsAlarm()V

    .line 336
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "etwsPrimary":Landroid/telephony/SmsCbMessage;
    .end local v2    # "isDuplicated":Z
    .end local v3    # "noti":Lcom/mediatek/internal/telephony/EtwsNotification;
    :goto_0
    return v4

    .line 332
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v2    # "isDuplicated":Z
    .restart local v3    # "noti":Lcom/mediatek/internal/telephony/EtwsNotification;
    :cond_0
    const-string v4, "find duplicated ETWS notifiction"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 333
    const/4 v4, 0x0

    goto :goto_0

    .line 336
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "isDuplicated":Z
    .end local v3    # "noti":Lcom/mediatek/internal/telephony/EtwsNotification;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleEtwsPrimaryNotification(Landroid/os/Message;)Z

    move-result v4

    goto :goto_0
.end method

.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 119
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 121
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 123
    const/4 v1, 0x1

    .line 126
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnEtwsNotification(Landroid/os/Handler;)V

    .line 96
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 97
    return-void
.end method

.method protected startEtwsAlarm()V
    .locals 8

    .prologue
    .line 374
    const v1, 0x1b7740

    .line 375
    .local v1, "delayInMs":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 377
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v3, "startEtwsAlarm"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 378
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.etws"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 382
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 384
    return-void
.end method

.method protected stopEtwsAlarm()V
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 389
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v1, "stopEtwsAlarm"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 392
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mEtwsAlarmIntent:Landroid/app/PendingIntent;

    .line 394
    :cond_0
    return-void
.end method
