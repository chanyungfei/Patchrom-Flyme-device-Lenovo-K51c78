.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final IS_BSP_PACKAGE:Z

.field private static final IS_FIVE_SIGNALBARS:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x6

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field private static final SIGNALBARS:Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_HIGHEST:I = 0x5

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static highthresholdJump:I

.field private static lowthresholdJump:I

.field private static mLastLteRsrp:I

.field private static mNewLteRsrp:I

.field private static mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

.field private static mStartTime:J

.field private static thresholdValue:I


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmEcn0Qdbm:I

.field private mGsmRscpQdbm:I

.field private mGsmRssiQdbm:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v0, v2

    const-string/jumbo v3, "poor"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string/jumbo v4, "moderate"

    aput-object v4, v0, v3

    const-string v3, "good"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "great"

    aput-object v4, v0, v3

    const-string v3, "highest"

    aput-object v3, v0, v7

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 71
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 72
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 91
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 92
    const-string/jumbo v0, "ro.mtk_bsp_package"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    .line 96
    const-string/jumbo v0, "ro.lenovo.signalbars"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNALBARS:Ljava/lang/String;

    .line 97
    sget-object v0, Landroid/telephony/SignalStrength;->SIGNALBARS:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telephony/SignalStrength;->SIGNALBARS:Ljava/lang/String;

    const-string v3, "five"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Landroid/telephony/SignalStrength;->IS_FIVE_SIGNALBARS:Z

    .line 102
    const v0, 0x7fffffff

    sput v0, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    .line 103
    const v0, 0x7fffffff

    sput v0, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    .line 104
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/telephony/SignalStrength;->mStartTime:J

    .line 106
    const/16 v0, 0x71

    sput v0, Landroid/telephony/SignalStrength;->thresholdValue:I

    .line 107
    sput v6, Landroid/telephony/SignalStrength;->lowthresholdJump:I

    .line 108
    sput v7, Landroid/telephony/SignalStrength;->highthresholdJump:I

    .line 521
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v1, v2

    .line 97
    goto :goto_1

    .line 71
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 72
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 136
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 137
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 138
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 139
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 140
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 141
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 142
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 143
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 144
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 145
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 146
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 148
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 187
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZIII)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "gsmRssiQdbm"    # I
    .param p15, "gsmRscpQdbm"    # I
    .param p16, "gsmEcn0Qdbm"    # I

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 205
    iput p14, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 206
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 207
    move/from16 v0, p16

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 208
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 372
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 160
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 161
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 162
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 163
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 164
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 165
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 166
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 167
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 168
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 169
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 170
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 171
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 172
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1401
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;
    .locals 2

    .prologue
    .line 302
    const-string v1, "SignalStrength get plugin"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 303
    sget-boolean v1, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v1, :cond_1

    .line 304
    sget-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    if-nez v1, :cond_0

    .line 306
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IServiceStateExt;

    sput-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .local v0, "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    sget-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    return-object v1

    .line 307
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 308
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    const-string v1, "Get plugin fail"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 309
    const/4 v1, 0x0

    sput-object v1, Landroid/telephony/SignalStrength;->mServiceStateExt:Lcom/mediatek/common/telephony/IServiceStateExt;

    .line 310
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 314
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string v1, "BSP package should not use plug in"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isC2KSupport()Z
    .locals 2

    .prologue
    .line 1577
    const-string/jumbo v0, "ro.mtk_c2k_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isCampOnLte()Z
    .locals 2

    .prologue
    .line 1417
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1336
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 10
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    const v4, 0x7fffffff

    const-wide/16 v8, 0x0

    .line 386
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    .line 387
    .local v1, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 388
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 389
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 390
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 391
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 392
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 393
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 394
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 395
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 396
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 397
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 398
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 400
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v1, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 403
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 404
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 405
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 410
    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-eqz v3, :cond_0

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-eq v3, v4, :cond_0

    iget-boolean v3, v1, Landroid/telephony/SignalStrength;->isGsm:Z

    if-nez v3, :cond_2

    .line 480
    :cond_0
    :goto_1
    return-object v1

    .line 400
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 416
    :cond_2
    const/4 v2, 0x0

    .line 418
    .local v2, "thresholdJump":I
    sget v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    .line 419
    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    .line 424
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    if-eq v3, v4, :cond_9

    .line 425
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->thresholdValue:I

    if-lt v3, v4, :cond_3

    .line 426
    sget v2, Landroid/telephony/SignalStrength;->lowthresholdJump:I

    .line 432
    :goto_2
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_4

    .line 435
    sget-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 436
    sput-wide v8, Landroid/telephony/SignalStrength;->mStartTime:J

    goto :goto_1

    .line 428
    :cond_3
    sget v2, Landroid/telephony/SignalStrength;->highthresholdJump:I

    goto :goto_2

    .line 439
    :cond_4
    sget v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_8

    .line 441
    const/4 v0, 0x3

    .line 442
    .local v0, "downgradeDelay":I
    sget v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    const/16 v4, 0x76

    if-ge v3, v4, :cond_5

    const/16 v0, 0xa

    .line 444
    :cond_5
    sget-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_6

    .line 445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    .line 447
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 448
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    goto :goto_1

    .line 450
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Landroid/telephony/SignalStrength;->mStartTime:J

    sub-long/2addr v4, v6

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7

    .line 452
    sput-wide v8, Landroid/telephony/SignalStrength;->mStartTime:J

    goto :goto_1

    .line 457
    :cond_7
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 458
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    goto :goto_1

    .line 463
    .end local v0    # "downgradeDelay":I
    :cond_8
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    iput v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 464
    sget v3, Landroid/telephony/SignalStrength;->mLastLteRsrp:I

    sput v3, Landroid/telephony/SignalStrength;->mNewLteRsrp:I

    .line 466
    sget-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 467
    sput-wide v8, Landroid/telephony/SignalStrength;->mStartTime:J

    goto :goto_1

    .line 473
    :cond_9
    sget-wide v4, Landroid/telephony/SignalStrength;->mStartTime:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    .line 474
    sput-wide v8, Landroid/telephony/SignalStrength;->mStartTime:J

    goto/16 :goto_1
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 124
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 125
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 126
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1287
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1288
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1289
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1290
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1291
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1292
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1293
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1294
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1295
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1296
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1297
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1298
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1299
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1301
    const-string v0, "RssiQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1302
    const-string v0, "RscpQdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1303
    const-string v0, "Ecn0Qdbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1304
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 324
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 325
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 326
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 327
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 328
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 329
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 330
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 331
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 332
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 333
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 334
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 335
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 336
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 337
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 338
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 339
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 340
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1231
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1240
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1232
    :catch_0
    move-exception v1

    .line 1233
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1240
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1313
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1314
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1315
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1316
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1317
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1318
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1319
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1320
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1321
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1322
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1323
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1324
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1325
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1327
    const-string v0, "RssiQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    const-string v0, "RscpQdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1329
    const-string v0, "Ecn0Qdbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1330
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 701
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 704
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 706
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 727
    .local v0, "asuLevel":I
    :goto_0
    return v0

    .line 708
    .end local v0    # "asuLevel":I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 711
    .end local v0    # "asuLevel":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 712
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 713
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_2

    .line 715
    move v0, v1

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 716
    .end local v0    # "asuLevel":I
    :cond_2
    if-nez v1, :cond_3

    .line 718
    move v0, v2

    .restart local v0    # "asuLevel":I
    goto :goto_0

    .line 721
    .end local v0    # "asuLevel":I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0    # "asuLevel":I
    :goto_1
    goto :goto_0

    .end local v0    # "asuLevel":I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 939
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 940
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 944
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 952
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 959
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 963
    .local v4, "level":I
    :goto_2
    return v4

    .line 945
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 946
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 947
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 948
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 949
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 953
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 954
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 955
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 956
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 957
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 959
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    const/16 v6, -0x5a

    .line 879
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 880
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 891
    .local v1, "cdmaEcio":I
    sget-boolean v5, Landroid/telephony/SignalStrength;->IS_FIVE_SIGNALBARS:Z

    if-eqz v5, :cond_7

    .line 892
    if-lt v0, v6, :cond_2

    const/4 v3, 0x5

    .line 908
    .local v3, "levelDbm":I
    :goto_0
    if-lt v1, v6, :cond_c

    const/4 v4, 0x4

    .line 914
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_10

    move v2, v3

    .line 916
    .local v2, "level":I
    :goto_2
    invoke-static {}, Landroid/telephony/SignalStrength;->isC2KSupport()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 917
    move v2, v3

    .line 922
    :cond_0
    sget-boolean v5, Landroid/telephony/SignalStrength;->IS_FIVE_SIGNALBARS:Z

    if-eqz v5, :cond_1

    .line 923
    move v2, v3

    .line 930
    :cond_1
    return v2

    .line 893
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_2
    const/16 v5, -0x60

    if-lt v0, v5, :cond_3

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 894
    .end local v3    # "levelDbm":I
    :cond_3
    const/16 v5, -0x66

    if-lt v0, v5, :cond_4

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 895
    .end local v3    # "levelDbm":I
    :cond_4
    const/16 v5, -0x6a

    if-lt v0, v5, :cond_5

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 896
    .end local v3    # "levelDbm":I
    :cond_5
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_6

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 897
    .end local v3    # "levelDbm":I
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 899
    .end local v3    # "levelDbm":I
    :cond_7
    const/16 v5, -0x5e

    if-lt v0, v5, :cond_8

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 900
    .end local v3    # "levelDbm":I
    :cond_8
    const/16 v5, -0x65

    if-lt v0, v5, :cond_9

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 901
    .end local v3    # "levelDbm":I
    :cond_9
    const/16 v5, -0x69

    if-lt v0, v5, :cond_a

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 902
    .end local v3    # "levelDbm":I
    :cond_a
    const/16 v5, -0x6d

    if-lt v0, v5, :cond_b

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 903
    .end local v3    # "levelDbm":I
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 909
    :cond_c
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_d

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 910
    .end local v4    # "levelEcio":I
    :cond_d
    const/16 v5, -0x82

    if-lt v1, v5, :cond_e

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 911
    .end local v4    # "levelEcio":I
    :cond_e
    const/16 v5, -0x96

    if-lt v1, v5, :cond_f

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 912
    .end local v4    # "levelEcio":I
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_1

    :cond_10
    move v2, v4

    .line 914
    goto :goto_2
.end method

.method public getDbm()I
    .locals 6

    .prologue
    const/16 v5, -0x71

    const/16 v4, -0x78

    .line 738
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 739
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 742
    .local v1, "dBm":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 744
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 757
    .end local v1    # "dBm":I
    :cond_0
    :goto_0
    return v1

    .line 747
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 748
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 750
    .local v2, "evdoDbm":I
    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_3

    .end local v0    # "cdmaDbm":I
    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    .restart local v0    # "cdmaDbm":I
    :cond_3
    if-eq v0, v4, :cond_4

    if-ne v0, v5, :cond_5

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    if-lt v0, v2, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 1023
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1024
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1028
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1035
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1042
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1046
    .local v2, "level":I
    :goto_2
    return v2

    .line 1029
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1030
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1031
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1032
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1033
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1036
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1037
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1038
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1039
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1040
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1042
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 6

    .prologue
    .line 972
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 973
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 983
    .local v1, "evdoSnr":I
    sget-boolean v5, Landroid/telephony/SignalStrength;->IS_FIVE_SIGNALBARS:Z

    if-eqz v5, :cond_6

    .line 984
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_1

    const/4 v3, 0x5

    .line 999
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_b

    const/4 v4, 0x4

    .line 1005
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_f

    move v2, v3

    .line 1007
    .local v2, "level":I
    :goto_2
    sget-boolean v5, Landroid/telephony/SignalStrength;->IS_FIVE_SIGNALBARS:Z

    if-eqz v5, :cond_0

    .line 1008
    move v2, v3

    .line 1014
    :cond_0
    return v2

    .line 985
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_1
    const/16 v5, -0x60

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 986
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x66

    if-lt v0, v5, :cond_3

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 987
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x6a

    if-lt v0, v5, :cond_4

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 988
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_5

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 989
    .end local v3    # "levelEvdoDbm":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 991
    .end local v3    # "levelEvdoDbm":I
    :cond_6
    const/16 v5, -0x5e

    if-lt v0, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 992
    .end local v3    # "levelEvdoDbm":I
    :cond_7
    const/16 v5, -0x65

    if-lt v0, v5, :cond_8

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 993
    .end local v3    # "levelEvdoDbm":I
    :cond_8
    const/16 v5, -0x69

    if-lt v0, v5, :cond_9

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 994
    .end local v3    # "levelEvdoDbm":I
    :cond_9
    const/16 v5, -0x6d

    if-lt v0, v5, :cond_a

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 995
    .end local v3    # "levelEvdoDbm":I
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1000
    :cond_b
    const/4 v5, 0x5

    if-lt v1, v5, :cond_c

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1001
    .end local v4    # "levelEvdoSnr":I
    :cond_c
    const/4 v5, 0x3

    if-lt v1, v5, :cond_d

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1002
    .end local v4    # "levelEvdoSnr":I
    :cond_d
    const/4 v5, 0x1

    if-lt v1, v5, :cond_e

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1003
    .end local v4    # "levelEvdoSnr":I
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_f
    move v2, v4

    .line 1005
    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 866
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 870
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 768
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 769
    .local v2, "gsmSignalStrength":I
    const/16 v5, 0x63

    if-ne v2, v5, :cond_1

    move v0, v4

    .line 770
    .local v0, "asu":I
    :goto_0
    if-eq v0, v4, :cond_4

    .line 771
    sget-boolean v4, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v4, :cond_0

    .line 772
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v3

    .line 773
    .local v3, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v3, :cond_2

    .line 774
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v3, v4, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I

    move-result v1

    .line 780
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mapGsmSignalDbm() mGsmRscpQdbm="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " asu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 782
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v4, :cond_3

    .line 783
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    div-int/lit8 v1, v4, 0x4

    .line 793
    .local v1, "dBm":I
    :goto_2
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_1
    move v0, v2

    .line 769
    goto :goto_0

    .line 776
    .restart local v0    # "asu":I
    .restart local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_2
    const-string v4, "[getGsmDbm] null plug-in instance"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 785
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_3
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v1, v4, -0x71

    .restart local v1    # "dBm":I
    goto :goto_2

    .line 788
    .end local v1    # "dBm":I
    :cond_4
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_2
.end method

.method public getGsmEcn0Qdbm()I
    .locals 1

    .prologue
    .line 1363
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    return v0
.end method

.method public getGsmLevel()I
    .locals 8

    .prologue
    const/16 v7, 0x63

    const/16 v6, 0xc

    const/4 v5, 0x5

    .line 808
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 810
    .local v0, "asu":I
    sget-boolean v4, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v4, :cond_1

    .line 811
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v3

    .line 812
    .local v3, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v3, :cond_0

    .line 813
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v3, v0, v4}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalLevel(II)I

    move-result v1

    .local v1, "level":I
    move v2, v1

    .line 853
    .end local v1    # "level":I
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    .local v2, "level":I
    :goto_0
    return v2

    .line 816
    .end local v2    # "level":I
    .restart local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_0
    const-string v4, "[getGsmLevel] null plug-in instance"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 821
    .end local v3    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    if-gez v4, :cond_7

    .line 823
    if-le v0, v5, :cond_2

    if-ne v0, v7, :cond_3

    .line 824
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "level":I
    :goto_1
    move v2, v1

    .line 853
    .end local v1    # "level":I
    .restart local v2    # "level":I
    goto :goto_0

    .line 825
    .end local v2    # "level":I
    :cond_3
    const/16 v4, 0xf

    if-lt v0, v4, :cond_4

    .line 826
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_1

    .line 827
    .end local v1    # "level":I
    :cond_4
    if-lt v0, v6, :cond_5

    .line 828
    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_1

    .line 829
    .end local v1    # "level":I
    :cond_5
    const/16 v4, 0x9

    if-lt v0, v4, :cond_6

    .line 830
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_1

    .line 832
    .end local v1    # "level":I
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_1

    .line 837
    .end local v1    # "level":I
    :cond_7
    const/4 v4, 0x2

    if-le v0, v4, :cond_8

    if-ne v0, v7, :cond_9

    .line 838
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "level":I
    goto :goto_1

    .line 839
    .end local v1    # "level":I
    :cond_9
    if-lt v0, v6, :cond_a

    .line 840
    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_1

    .line 841
    .end local v1    # "level":I
    :cond_a
    const/16 v4, 0x8

    if-lt v0, v4, :cond_b

    .line 842
    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_1

    .line 843
    .end local v1    # "level":I
    :cond_b
    if-lt v0, v5, :cond_c

    .line 844
    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_1

    .line 846
    .end local v1    # "level":I
    :cond_c
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_1
.end method

.method public getGsmRscpQdbm()I
    .locals 1

    .prologue
    .line 1354
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    return v0
.end method

.method public getGsmRssiQdbm()I
    .locals 1

    .prologue
    .line 1345
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getGsmSignalStrengthDbm()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 1373
    const/4 v1, -0x1

    .line 1374
    .local v1, "dBm":I
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1375
    .local v3, "gsmSignalStrength":I
    const/16 v6, 0x63

    if-ne v3, v6, :cond_0

    move v0, v5

    .line 1377
    .local v0, "asu":I
    :goto_0
    if-eq v0, v5, :cond_3

    .line 1378
    sget-boolean v5, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v5, :cond_2

    .line 1379
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v4

    .line 1380
    .local v4, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v4, :cond_1

    .line 1381
    iget v5, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-interface {v4, v5, v0}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapGsmSignalDbm(II)I

    move-result v1

    move v2, v1

    .line 1389
    .end local v1    # "dBm":I
    .end local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    .local v2, "dBm":I
    :goto_1
    return v2

    .end local v0    # "asu":I
    .end local v2    # "dBm":I
    .restart local v1    # "dBm":I
    :cond_0
    move v0, v3

    .line 1375
    goto :goto_0

    .line 1384
    .restart local v0    # "asu":I
    .restart local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    const-string v5, "[getGsmSignalStrengthDbm] null plug-in instance"

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1387
    .end local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_2
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v1, v5, -0x71

    :cond_3
    move v2, v1

    .line 1389
    .end local v1    # "dBm":I
    .restart local v2    # "dBm":I
    goto :goto_1
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 666
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 667
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 670
    .local v2, "level":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isCampOnLte()Z

    move-result v3

    if-nez v3, :cond_0

    .line 672
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 691
    :cond_0
    :goto_0
    return v2

    .line 675
    .end local v2    # "level":I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 676
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 677
    .local v1, "evdoLevel":I
    if-nez v1, :cond_2

    .line 679
    move v2, v0

    .restart local v2    # "level":I
    goto :goto_0

    .line 680
    .end local v2    # "level":I
    :cond_2
    if-nez v0, :cond_3

    .line 682
    move v2, v1

    .restart local v2    # "level":I
    goto :goto_0

    .line 685
    .end local v2    # "level":I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2    # "level":I
    :goto_1
    goto :goto_0

    .end local v2    # "level":I
    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1175
    const/16 v0, 0x63

    .line 1176
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1190
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 1191
    const/16 v0, 0xff

    .line 1198
    :goto_0
    return v0

    .line 1193
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 1070
    const/4 v2, 0x0

    .line 1071
    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .line 1072
    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1074
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, #android:integer@config_LTE_RSRP_threshold_type#t

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1077
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_0

    .line 1078
    sget-object v5, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 1083
    .local v5, "threshRsrp":[I
    :goto_0
    sget-boolean v6, Landroid/telephony/SignalStrength;->IS_BSP_PACKAGE:Z

    if-nez v6, :cond_2

    .line 1084
    invoke-static {}, Landroid/telephony/SignalStrength;->getPlugInInstance()Lcom/mediatek/common/telephony/IServiceStateExt;

    move-result-object v4

    .line 1085
    .local v4, "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    if-eqz v4, :cond_1

    .line 1086
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v7, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-interface {v4, v6, v7, v8}, Lcom/mediatek/common/telephony/IServiceStateExt;->mapLteSignalLevel(III)I

    move-result v0

    move v6, v0

    .line 1165
    .end local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :goto_1
    return v6

    .line 1080
    .end local v5    # "threshRsrp":[I
    :cond_0
    sget-object v5, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v5    # "threshRsrp":[I
    goto :goto_0

    .line 1089
    .restart local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_1
    const-string v6, "[getLteLevel] null plug-in instance"

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1093
    .end local v4    # "ssExt":Lcom/mediatek/common/telephony/IServiceStateExt;
    :cond_2
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x2c

    if-le v6, v7, :cond_5

    .line 1094
    const/4 v0, -0x1

    .line 1113
    :cond_3
    :goto_2
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x12c

    if-le v6, v7, :cond_a

    .line 1114
    const/4 v3, -0x1

    .line 1131
    :cond_4
    :goto_3
    if-eq v3, v8, :cond_10

    if-eq v0, v8, :cond_10

    .line 1137
    if-ge v0, v3, :cond_f

    move v6, v0

    goto :goto_1

    .line 1095
    :cond_5
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x55

    if-lt v6, v7, :cond_6

    .line 1096
    const/4 v0, 0x4

    goto :goto_2

    .line 1097
    :cond_6
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x5f

    if-lt v6, v7, :cond_7

    .line 1098
    const/4 v0, 0x3

    goto :goto_2

    .line 1099
    :cond_7
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x69

    if-lt v6, v7, :cond_8

    .line 1100
    const/4 v0, 0x2

    goto :goto_2

    .line 1101
    :cond_8
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x73

    if-lt v6, v7, :cond_9

    .line 1102
    const/4 v0, 0x1

    goto :goto_2

    .line 1103
    :cond_9
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v7, -0x8c

    if-lt v6, v7, :cond_3

    .line 1104
    const/4 v0, 0x0

    goto :goto_2

    .line 1115
    :cond_a
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x82

    if-lt v6, v7, :cond_b

    .line 1116
    const/4 v3, 0x4

    goto :goto_3

    .line 1117
    :cond_b
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0x2d

    if-lt v6, v7, :cond_c

    .line 1118
    const/4 v3, 0x3

    goto :goto_3

    .line 1119
    :cond_c
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_d

    .line 1120
    const/4 v3, 0x2

    goto :goto_3

    .line 1121
    :cond_d
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, -0x1e

    if-lt v6, v7, :cond_e

    .line 1122
    const/4 v3, 0x1

    goto :goto_3

    .line 1123
    :cond_e
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v7, -0xc8

    if-lt v6, v7, :cond_4

    .line 1124
    const/4 v3, 0x0

    goto :goto_3

    :cond_f
    move v6, v3

    .line 1137
    goto :goto_1

    .line 1140
    :cond_10
    if-eq v3, v8, :cond_11

    move v6, v3

    .line 1141
    goto :goto_1

    .line 1144
    :cond_11
    if-eq v0, v8, :cond_12

    move v6, v0

    .line 1145
    goto :goto_1

    .line 1149
    :cond_12
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0x3f

    if-le v6, v7, :cond_14

    .line 1150
    const/4 v2, 0x0

    :cond_13
    :goto_4
    move v6, v2

    .line 1165
    goto/16 :goto_1

    .line 1151
    :cond_14
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0xc

    if-lt v6, v7, :cond_15

    .line 1152
    const/4 v2, 0x4

    goto :goto_4

    .line 1153
    :cond_15
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v7, 0x8

    if-lt v6, v7, :cond_16

    .line 1154
    const/4 v2, 0x3

    goto :goto_4

    .line 1155
    :cond_16
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_17

    .line 1156
    const/4 v2, 0x2

    goto :goto_4

    .line 1157
    :cond_17
    iget v6, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v6, :cond_13

    .line 1158
    const/4 v2, 0x1

    goto :goto_4
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1213
    const/16 v0, 0x1f

    .line 1214
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 283
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 284
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 285
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 286
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 287
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 288
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 289
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 290
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 291
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 292
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 293
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 294
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 295
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 299
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 254
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 257
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1205
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    .prologue
    .line 1449
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1450
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    .prologue
    .line 1459
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1460
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    .prologue
    .line 1469
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1470
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    .prologue
    .line 1479
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1480
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    .prologue
    .line 1489
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1490
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 580
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 581
    return-void
.end method

.method public setGsmBitErrorRate(I)V
    .locals 0
    .param p1, "gsmBitErrorRate"    # I

    .prologue
    .line 1439
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1440
    return-void
.end method

.method public setGsmEcn0Qdbm(I)V
    .locals 0
    .param p1, "gsmEcn0Qdbm"    # I

    .prologue
    .line 1569
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    .line 1570
    return-void
.end method

.method public setGsmRscpQdbm(I)V
    .locals 0
    .param p1, "gsmRscpQdbm"    # I

    .prologue
    .line 1559
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    .line 1560
    return-void
.end method

.method public setGsmRssiQdbm(I)V
    .locals 0
    .param p1, "gsmRssiQdbm"    # I

    .prologue
    .line 1549
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    .line 1550
    return-void
.end method

.method public setGsmSignalStrength(I)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I

    .prologue
    .line 1429
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1430
    return-void
.end method

.method public setLteCqi(I)V
    .locals 0
    .param p1, "lteCqi"    # I

    .prologue
    .line 1539
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1540
    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0
    .param p1, "lteRsrp"    # I

    .prologue
    .line 1509
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1510
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "lteRsrq"    # I

    .prologue
    .line 1519
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1520
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "lteRssnr"    # I

    .prologue
    .line 1529
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1530
    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0
    .param p1, "lteSignalStrength"    # I

    .prologue
    .line 1499
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1500
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 547
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 550
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 551
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 553
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 554
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 555
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 558
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 560
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 561
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 562
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 569
    return-void

    :cond_4
    move v0, v1

    .line 547
    goto :goto_0

    :cond_5
    move v0, v2

    .line 550
    goto :goto_1

    .line 551
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 554
    goto :goto_3

    :cond_8
    move v0, v4

    .line 560
    goto :goto_4

    :cond_9
    move v0, v4

    .line 561
    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 487
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRssiQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmRscpQdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmEcn0Qdbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    return-void

    .line 499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
