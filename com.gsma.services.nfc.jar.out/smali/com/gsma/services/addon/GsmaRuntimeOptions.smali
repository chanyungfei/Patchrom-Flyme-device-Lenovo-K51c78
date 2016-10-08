.class public Lcom/gsma/services/addon/GsmaRuntimeOptions;
.super Ljava/lang/Object;
.source "GsmaRuntimeOptions.java"


# static fields
.field private static final BEAM_RECV_FAIL_CNT:I = 0xa

.field private static final BEAM_RECV_SLEEP_TIME:I = 0xc

.field private static final BEAM_SEND_FAIL_CNT:I = 0x9

.field private static final BEAM_SEND_SLEEP_TIME:I = 0xb

.field private static final BEAM_SETUP_CONNECTIION_TIME:I = 0xd

.field private static final BUNDLE_SIM_STATE:I = 0x7

.field private static final CFG_FILE_PATH:Ljava/lang/String; = "system/etc/gsma.cfg"

.field private static final CFG_FILE_RULES:[Ljava/lang/String;

.field private static final EVT_AC_BYPASS:I = 0x1

.field private static final EVT_AC_DEFAULT:I = 0x0

.field private static final EVT_BROADCAST_AC:I = 0x6

.field private static final GSMA_EVT_BROADCAST:I = 0xe

.field private static final GSMA_VERSION:I = 0x1

.field private static final GSMA_VERSION_VALUE:[I

.field private static final HCE_DEFAULT_ROUTE_HOST:I = 0x10

.field private static final NO:I = 0x0

.field private static final NON_NFC_SIM_POPUP:I = 0x5

.field private static final NO_EMU_IN_FLYMODE:I = 0x8

.field private static final SEAPI_SUPPORT_CMCC:I = 0xf

.field private static final TABLE_BEAM_RECV_FAIL_CNT:[I

.field private static final TABLE_BEAM_RECV_SLEEP_TIME:[I

.field private static final TABLE_BEAM_SEND_FAIL_CNT:[I

.field private static final TABLE_BEAM_SEND_SLEEP_TIME:[I

.field private static final TABLE_BEAM_SETUP_CONNECTION_TIME:[I

.field private static final YES:I = 0x1

.field public static sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "VERSION=1:3.0=1,4.1=2,5.0=3,6.0=4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->CFG_FILE_RULES:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->GSMA_VERSION_VALUE:[I

    .line 42
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->TABLE_BEAM_SEND_FAIL_CNT:[I

    .line 43
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->TABLE_BEAM_RECV_FAIL_CNT:[I

    .line 44
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->TABLE_BEAM_SEND_SLEEP_TIME:[I

    .line 45
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->TABLE_BEAM_RECV_SLEEP_TIME:[I

    .line 47
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->TABLE_BEAM_SETUP_CONNECTION_TIME:[I

    .line 56
    sget-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->CFG_FILE_RULES:[Ljava/lang/String;

    invoke-static {v0}, Lcom/gsma/services/addon/ConfigUtil;->createParser([Ljava/lang/String;)Lcom/gsma/services/addon/ConfigUtil$IParser;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    .line 57
    sget-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    const-string v1, "system/etc/gsma.cfg"

    invoke-interface {v0, v1}, Lcom/gsma/services/addon/ConfigUtil$IParser;->parse(Ljava/lang/String;)Z

    .line 58
    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0x0
        0x30
        0x41
        0x50
        0x60
    .end array-data

    .line 42
    :array_1
    .array-data 4
        0x0
        0x5
        0xa
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    .line 43
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    .line 44
    :array_3
    .array-data 4
        0x0
        0x2
        0x5
        0xa
        0xf
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x64
    .end array-data

    .line 45
    :array_4
    .array-data 4
        0x0
        0x2
        0x5
        0xa
        0xf
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x64
    .end array-data

    .line 47
    :array_5
    .array-data 4
        0x0
        0x4e20
        0x61a8
        0x7530
        0x88b8
        0x9c40
        0xafc8
        0xc350
        0xd6d8
        0xea60
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGsmaVersion()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 65
    new-array v1, v2, [I

    .line 66
    .local v1, "userConfig":[I
    const/4 v0, 0x0

    .line 68
    .local v0, "ret":I
    :try_start_0
    sget-object v2, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/gsma/services/addon/ConfigUtil$IParser;->get(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    sget-object v2, Lcom/gsma/services/addon/GsmaRuntimeOptions;->GSMA_VERSION_VALUE:[I

    const/4 v3, 0x0

    aget v3, v1, v3

    aget v0, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 70
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getParser()Lcom/gsma/services/addon/ConfigUtil$IParser;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    return-object v0
.end method

.method public static isGsmaEvtBroadcast()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 76
    new-array v1, v2, [I

    .line 77
    .local v1, "userConfig":[I
    const/4 v0, 0x0

    .line 79
    .local v0, "ret":Z
    :try_start_0
    sget-object v4, Lcom/gsma/services/addon/GsmaRuntimeOptions;->sConfigFileParser:Lcom/gsma/services/addon/ConfigUtil$IParser;

    const/16 v5, 0xe

    invoke-interface {v4, v5, v1}, Lcom/gsma/services/addon/ConfigUtil$IParser;->get(I[I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const/4 v4, 0x0

    aget v4, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 83
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 80
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    goto :goto_0
.end method
