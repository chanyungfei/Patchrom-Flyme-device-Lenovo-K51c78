.class public Lcom/gsma/services/nfc/NfcController;
.super Ljava/lang/Object;
.source "NfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/NfcController$Callbacks;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "NfcController"

.field private static mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

.field private static mContext:Landroid/content/Context;

.field private static sSingleton:Lcom/gsma/services/nfc/NfcController;


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mOffHostServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gsma/services/nfc/OffHostService;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mOffHostServices:Ljava/util/List;

    .line 229
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 230
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 231
    const-string v0, "NfcController"

    const-string v1, "NFC adapter not present."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/nfc/NfcController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/gsma/services/nfc/NfcController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/NfcController;->unregisterEnableNfcEvent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/gsma/services/nfc/NfcController;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/nfc/NfcController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/nfc/NfcController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/services/nfc/NfcController;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/gsma/services/nfc/NfcController$Callbacks;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    return-object v0
.end method

.method private addStaticOffHostService(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .locals 23
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v15, 0x0

    .line 249
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v20, "android.nfc.cardemulation.off_host_apdu_service"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 250
    if-nez v15, :cond_1

    .line 251
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v21, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :catch_0
    move-exception v10

    .line 323
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to create context for: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v20

    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v20

    .line 255
    :cond_1
    :try_start_2
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v11

    .line 256
    .local v11, "eventType":I
    :goto_0
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v11, v0, :cond_2

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_2

    .line 257
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    goto :goto_0

    .line 260
    :cond_2
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 261
    .local v19, "tagName":Ljava/lang/String;
    const-string v20, "offhost-apdu-service"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 262
    new-instance v20, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v21, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct/range {v20 .. v21}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 266
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16

    .line 267
    .local v16, "res":Landroid/content/res/Resources;
    invoke-static {v15}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 269
    .local v5, "attrs":Landroid/util/AttributeSet;
    sget-object v20, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 271
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, "description":Ljava/lang/String;
    const/16 v20, 0x1

    const/16 v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 275
    .local v6, "bannerResourceId":I
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    const-string v20, "UICC"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/gsma/services/nfc/NfcController;->defineOffHostService(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;

    move-result-object v18

    .line 279
    .local v18, "staticService":Lcom/gsma/services/nfc/OffHostService;
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 280
    .local v8, "depth":I
    const/4 v7, 0x0

    .line 284
    .local v7, "currentGroup":Lcom/gsma/services/nfc/AidGroup;
    :cond_4
    :goto_1
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v11, v0, :cond_5

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v8, :cond_b

    :cond_5
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v11, v0, :cond_b

    .line 285
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 286
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v11, v0, :cond_7

    const-string v20, "aid-group"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    if-nez v7, :cond_7

    .line 288
    sget-object v20, Lcom/android/internal/R$styleable;->AidGroup:[I

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 291
    .local v12, "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 293
    .local v13, "groupCategory":Ljava/lang/String;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 295
    .local v14, "groupDescription":Ljava/lang/String;
    const-string v20, "payment"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 296
    const-string v13, "other"

    .line 298
    :cond_6
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 299
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v13}, Lcom/gsma/services/nfc/OffHostService;->defineAidGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/AidGroup;

    move-result-object v7

    .line 300
    goto :goto_1

    .end local v12    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v13    # "groupCategory":Ljava/lang/String;
    .end local v14    # "groupDescription":Ljava/lang/String;
    :cond_7
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v11, v0, :cond_9

    const-string v20, "aid-group"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    if-eqz v7, :cond_9

    .line 302
    invoke-virtual {v7}, Lcom/gsma/services/nfc/AidGroup;->getGroupAidList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_8

    .line 303
    const-string v20, "NfcController"

    const-string v21, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 306
    :cond_9
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v11, v0, :cond_4

    const-string v20, "aid-filter"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    if-eqz v7, :cond_4

    .line 308
    sget-object v20, Lcom/android/internal/R$styleable;->AidFilter:[I

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 310
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "aid":Ljava/lang/String;
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-virtual {v7}, Lcom/gsma/services/nfc/AidGroup;->getGroupAidList()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 313
    invoke-virtual {v7, v4}, Lcom/gsma/services/nfc/AidGroup;->addNewAid(Ljava/lang/String;)V

    .line 317
    :goto_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 315
    :cond_a
    const-string v20, "NfcController"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignoring invalid or duplicate aid: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 325
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    :cond_b
    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 327
    :cond_c
    return-void
.end method

.method private static createSingleton(Landroid/content/Context;)Lcom/gsma/services/nfc/NfcController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    const-string v0, "NfcController"

    const-string v1, "createSingleton()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/gsma/services/nfc/NfcController;->sSingleton:Lcom/gsma/services/nfc/NfcController;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcom/gsma/services/nfc/NfcController;

    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/NfcController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gsma/services/nfc/NfcController;->sSingleton:Lcom/gsma/services/nfc/NfcController;

    .line 241
    :cond_0
    sget-object v0, Lcom/gsma/services/nfc/NfcController;->sSingleton:Lcom/gsma/services/nfc/NfcController;

    return-object v0
.end method

.method public static getDefaultController(Landroid/content/Context;Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;

    .prologue
    .line 178
    const-string v1, "NfcController"

    const-string v2, "getDefaultController()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sput-object p1, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 180
    sput-object p0, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    .line 182
    invoke-static {p0}, Lcom/gsma/services/nfc/NfcController;->createSingleton(Landroid/content/Context;)Lcom/gsma/services/nfc/NfcController;

    move-result-object v0

    .line 183
    .local v0, "controller":Lcom/gsma/services/nfc/NfcController;
    if-eqz v0, :cond_0

    .line 184
    sget-object v1, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    invoke-interface {v1, v0}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onGetDefaultController(Lcom/gsma/services/nfc/NfcController;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    sget-object v1, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onGetDefaultController(Lcom/gsma/services/nfc/NfcController;)V

    goto :goto_0
.end method

.method private loadStaticOffHostService(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    :try_start_0
    const-string v8, "android"

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 339
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.gsma.services.nfc.action.OFF_HOST_SERVICE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 344
    .local v6, "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 346
    .local v3, "pkgOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 348
    .local v5, "resolvedOffHostService":Landroid/content/pm/ResolveInfo;
    :try_start_1
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 349
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 351
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string v8, "android.permission.NFC"

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 355
    const-string v8, "NfcController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping APDU service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": it does not require the permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "android.permission.NFC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 370
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "NfcController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load component info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 334
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "resolvedOffHostService":Landroid/content/pm/ResolveInfo;
    .end local v6    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v1

    .line 335
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "NfcController"

    const-string v9, "Could not create user package context"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-void

    .line 360
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pkgOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "resolvedOffHostService":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    :try_start_2
    const-string v8, "android.permission.BIND_NFC_SERVICE"

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 362
    const-string v8, "NfcController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping APDU service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": it does not require the permission "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "android.permission.BIND_NFC_SERVICE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 372
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    :catch_2
    move-exception v1

    .line 373
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "NfcController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to load component info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 367
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    :cond_3
    :try_start_3
    invoke-direct {p0, v4, v7}, Lcom/gsma/services/nfc/NfcController;->addStaticOffHostService(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method private registerEnableNfcEvent(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    const-string v1, "NfcController"

    const-string v2, "registerEnableNfcEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.gsma.services.nfc.REQUEST_ENABLE_NFC"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/gsma/services/nfc/NfcController$1;

    invoke-direct {v1, p0}, Lcom/gsma/services/nfc/NfcController$1;-><init>(Lcom/gsma/services/nfc/NfcController;)V

    iput-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 408
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 409
    return-void
.end method

.method private unregisterEnableNfcEvent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "NfcController"

    const-string v1, "unregisterEnableNfcEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 415
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method public defineOffHostService(Ljava/lang/String;Ljava/lang/String;)Lcom/gsma/services/nfc/OffHostService;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "SEName"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lcom/gsma/services/nfc/OffHostService;

    sget-object v1, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, p2, v1}, Lcom/gsma/services/nfc/OffHostService;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 72
    .local v0, "service":Lcom/gsma/services/nfc/OffHostService;
    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mOffHostServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v0
.end method

.method public deleteOffHostService(Lcom/gsma/services/nfc/OffHostService;)V
    .locals 2
    .param p1, "service"    # Lcom/gsma/services/nfc/OffHostService;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Service is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mOffHostServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public disableCardEmulationMode(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 5
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "NFC Controller is not enabled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    const-string v2, "NfcController"

    const-string v3, "disableCardEmulationMode()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sput-object p1, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 101
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.nfc.hce"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 103
    .local v0, "isHceCapable":Z
    if-eqz v0, :cond_1

    .line 104
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onCardEmulationMode(I)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_multise_active"

    const-string v4, "Off"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    sget-object v2, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onCardEmulationMode(I)V

    goto :goto_0
.end method

.method public enableCardEmulationMode(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 7
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 120
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 121
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "NFC Controller is not enabled"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_0
    const-string v3, "NfcController"

    const-string v4, "enableCardEmulationMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sput-object p1, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    .line 127
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_multise_active_num"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 130
    .local v2, "seNum":I
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 131
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.nfc.hce"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 132
    .local v0, "isHceCapable":Z
    if-eqz v0, :cond_1

    .line 133
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    invoke-interface {v3, v6}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onCardEmulationMode(I)V

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_1
    if-lez v2, :cond_2

    .line 136
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    invoke-interface {v3, v6}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onCardEmulationMode(I)V

    goto :goto_0

    .line 138
    :cond_2
    sget-object v3, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onCardEmulationMode(I)V

    goto :goto_0
.end method

.method public enableNfcController(Lcom/gsma/services/nfc/NfcController$Callbacks;)V
    .locals 7
    .param p1, "cb"    # Lcom/gsma/services/nfc/NfcController$Callbacks;

    .prologue
    const/4 v6, 0x1

    .line 149
    sget-object v4, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 150
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 151
    .local v2, "runningPackage":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 152
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 153
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 154
    iput-object v2, p0, Lcom/gsma/services/nfc/NfcController;->mPackageName:Ljava/lang/String;

    .line 157
    :cond_0
    iget-object v4, p0, Lcom/gsma/services/nfc/NfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.mediatek.nfc.gsmahandset.ENABLE_COMFIRM"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.mediatek.nfc.gsmahandset.packagename"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    sget-object v4, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    sget-object v4, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/gsma/services/nfc/NfcController;->registerEnableNfcEvent(Landroid/content/Context;)V

    .line 169
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v4, Lcom/gsma/services/nfc/NfcController;->mCallback:Lcom/gsma/services/nfc/NfcController$Callbacks;

    invoke-interface {v4, v6}, Lcom/gsma/services/nfc/NfcController$Callbacks;->onEnableNfcController(Z)V

    goto :goto_0
.end method

.method public getDefaultOffHostService()Lcom/gsma/services/nfc/OffHostService;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffHostServices()[Lcom/gsma/services/nfc/OffHostService;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mOffHostServices:Ljava/util/List;

    iget-object v1, p0, Lcom/gsma/services/nfc/NfcController;->mOffHostServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/gsma/services/nfc/OffHostService;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/nfc/OffHostService;

    return-object v0
.end method

.method public isCardEmulationEnabled()Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 211
    const-string v5, "NfcController"

    const-string v6, "isCardEmulationEnabled()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v5, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 214
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.nfc.hce"

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 215
    .local v0, "isHceCapable":Z
    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v3

    .line 218
    :cond_1
    sget-object v5, Lcom/gsma/services/nfc/NfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nfc_multise_active_num"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 220
    .local v2, "seNum":I
    if-gtz v2, :cond_0

    move v3, v4

    .line 224
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 199
    const-string v0, "NfcController"

    const-string v1, "isEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/gsma/services/nfc/NfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
