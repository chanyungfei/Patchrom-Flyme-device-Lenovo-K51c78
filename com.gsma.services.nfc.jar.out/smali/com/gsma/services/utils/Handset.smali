.class public Lcom/gsma/services/utils/Handset;
.super Ljava/lang/Object;
.source "Handset.java"


# static fields
.field public static final BATTERY_LOW_MODE:I = 0x90

.field public static final BATTERY_POWER_OFF_MODE:I = 0x91

.field public static final DEFAULT_VERSION:I = 0x1770

.field public static final FELICA:I = 0x20

.field public static final HCI_SWP:I = 0x0

.field public static final MIFARE_CLASSIC:I = 0x21

.field public static final MIFARE_DESFIRE:I = 0x22

.field public static final MULTIPLE_ACTIVE_CEE:I = 0x1

.field public static final NFC_FORUM_TYPE3:I = 0x23

.field public static final OMAPI:I = 0x50

.field static final TAG:Ljava/lang/String; = "Handset"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "Handset"

    const-string v1, "Handset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method private describeFeature(I)Ljava/lang/String;
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 195
    const-string v0, "[unknow]"

    .line 197
    .local v0, "ret":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 230
    :goto_0
    return-object v0

    .line 199
    :sswitch_0
    const-string v0, "OMAPI"

    .line 200
    goto :goto_0

    .line 202
    :sswitch_1
    const-string v0, "NFC_FORUM_TYPE3"

    .line 203
    goto :goto_0

    .line 205
    :sswitch_2
    const-string v0, "FELICA"

    .line 206
    goto :goto_0

    .line 208
    :sswitch_3
    const-string v0, "HCI_SWP"

    .line 209
    goto :goto_0

    .line 212
    :sswitch_4
    const-string v0, "MIFARE_CLASSIC"

    .line 213
    goto :goto_0

    .line 215
    :sswitch_5
    const-string v0, "MIFARE_DESFIRE"

    .line 216
    goto :goto_0

    .line 218
    :sswitch_6
    const-string v0, "MULTIPLE_ACTIVE_CEE"

    .line 219
    goto :goto_0

    .line 223
    :sswitch_7
    const-string v0, "BATTERY_LOW_MODE"

    .line 224
    goto :goto_0

    .line 226
    :sswitch_8
    const-string v0, "BATTERY_POWER_OFF_MODE"

    goto :goto_0

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_6
        0x20 -> :sswitch_2
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
        0x23 -> :sswitch_1
        0x50 -> :sswitch_0
        0x90 -> :sswitch_7
        0x91 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public enableMultiEvt_transactionReception()V
    .locals 2

    .prologue
    .line 171
    const-string v0, "Handset"

    const-string v1, "enableMultiEvt_transactionReception()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/gsma/services/addon/NfcGsmaExtra;->getInstance()Lcom/gsma/services/addon/NfcGsmaExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/addon/NfcGsmaExtra;->enableMultiEvtTransaction()Z

    .line 189
    return-void
.end method

.method public getProperty(I)Z
    .locals 5
    .param p1, "feature"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 102
    const-string v2, "Handset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty()  feature:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/gsma/services/utils/Handset;->describeFeature(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v2, 0x20

    if-eq p1, v2, :cond_0

    const/16 v2, 0x21

    if-eq p1, v2, :cond_0

    const/16 v2, 0x22

    if-eq p1, v2, :cond_0

    const/16 v2, 0x23

    if-eq p1, v2, :cond_0

    const/16 v2, 0x50

    if-eq p1, v2, :cond_0

    const/16 v2, 0x90

    if-eq p1, v2, :cond_0

    const/16 v2, 0x91

    if-eq p1, v2, :cond_0

    .line 114
    const-string v0, "Handset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " throw new IllegalArgumentException , feature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getProperty() feature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 151
    const-string v0, "Handset"

    const-string v2, " out switch, return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 152
    :goto_0
    return v0

    .line 125
    :sswitch_0
    const-string v1, "Handset"

    const-string v2, " return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :sswitch_1
    invoke-static {}, Lcom/gsma/services/addon/NfcGsmaExtra;->getInstance()Lcom/gsma/services/addon/NfcGsmaExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/addon/NfcGsmaExtra;->hasHCE()Z

    move-result v0

    goto :goto_0

    .line 138
    :sswitch_2
    const-string v0, "Handset"

    const-string v2, "TS26_NFC_REQ_092.6 return false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 139
    goto :goto_0

    .line 145
    :sswitch_3
    const-string v1, "Handset"

    const-string v2, " BATTERY_LOW_MODE  BATTERY_POWER_OFF_MODE, return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_2
        0x50 -> :sswitch_0
        0x90 -> :sswitch_3
        0x91 -> :sswitch_3
    .end sparse-switch
.end method

.method public getVersion()I
    .locals 6

    .prologue
    .line 55
    const-string v3, "Handset"

    const-string v4, "getVersion()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/gsma/services/addon/GsmaRuntimeOptions;->getGsmaVersion()I

    move-result v2

    .line 59
    .local v2, "version":I
    const-string v3, "Handset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  Hex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez v2, :cond_0

    .line 62
    const-string v3, "Handset"

    const-string v4, "return DEFAULT_VERSION: 6000"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/16 v3, 0x1770

    .line 70
    :goto_0
    return v3

    .line 65
    :cond_0
    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    mul-int/lit16 v0, v3, 0x3e8

    .line 67
    .local v0, "majorVersion":I
    and-int/lit8 v1, v2, 0xf

    .line 69
    .local v1, "minorVersion":I
    const-string v3, "Handset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " majorVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minorVersion:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    add-int v3, v0, v1

    goto :goto_0
.end method
