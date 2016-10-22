.class public Lcom/gsma/services/nfc/SEController;
.super Ljava/lang/Object;
.source "SEController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/SEController$Callbacks;
    }
.end annotation


# static fields
.field public static final SETTING_STR_ESE:Ljava/lang/String; = "Embedded SE"

.field public static final SETTING_STR_OFF:Ljava/lang/String; = "Off"

.field public static final SETTING_STR_SIM1:Ljava/lang/String; = "SIM1"

.field public static final SETTING_STR_SIM2:Ljava/lang/String; = "SIM2"

.field public static final SETTING_STR_SSD:Ljava/lang/String; = "Smart SD card"

.field static final TAG:Ljava/lang/String; = "SEController"

.field private static mCallback:Lcom/gsma/services/nfc/SEController$Callbacks;

.field private static mHandler:Landroid/os/Handler;

.field private static mStaticInstance:Lcom/gsma/services/nfc/SEController;

.field private static runnable_callback:Ljava/lang/Runnable;


# instance fields
.field private EMULATION_OFF:Ljava/lang/String;

.field eSeString:Ljava/lang/String;

.field private final mActiveSeMap:[Ljava/lang/String;

.field mActiveString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mSettingSeMap:[Ljava/lang/String;

.field noActiveSe:Ljava/lang/String;

.field sdString:Ljava/lang/String;

.field sim1String:Ljava/lang/String;

.field sim2String:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/SEController;->mHandler:Landroid/os/Handler;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/nfc/SEController;->mStaticInstance:Lcom/gsma/services/nfc/SEController;

    .line 122
    new-instance v0, Lcom/gsma/services/nfc/SEController$1;

    invoke-direct {v0}, Lcom/gsma/services/nfc/SEController$1;-><init>()V

    sput-object v0, Lcom/gsma/services/nfc/SEController;->runnable_callback:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->EMULATION_OFF:Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    aput-object v1, v0, v2

    const-string v1, "SIM1"

    aput-object v1, v0, v3

    const-string v1, "SIM2"

    aput-object v1, v0, v4

    const-string v1, "Smart SD card"

    aput-object v1, v0, v5

    const-string v1, "Embedded SE"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->mSettingSeMap:[Ljava/lang/String;

    .line 51
    const-string v0, "SE_DEACTIVE"

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->noActiveSe:Ljava/lang/String;

    .line 52
    const-string v0, "SIM1"

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->sim1String:Ljava/lang/String;

    .line 53
    const-string v0, "SIM2"

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->sim2String:Ljava/lang/String;

    .line 54
    const-string v0, "SD"

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->sdString:Ljava/lang/String;

    .line 55
    const-string v0, "eSE"

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->eSeString:Ljava/lang/String;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->noActiveSe:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->sim1String:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->sim2String:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->sdString:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->eSeString:Ljava/lang/String;

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->mActiveSeMap:[Ljava/lang/String;

    .line 68
    const-string v0, "SEController"

    const-string v1, "SEController()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/gsma/services/nfc/SEController;->mContext:Landroid/content/Context;

    .line 71
    const-string v0, "SEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NfcAdapter.getDefaultAdapter(mContext) mContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gsma/services/nfc/SEController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/gsma/services/nfc/SEController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/nfc/SEController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 75
    iget-object v0, p0, Lcom/gsma/services/nfc/SEController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 76
    const-string v0, "SEController"

    const-string v1, " NfcAdapter.getDefaultAdapter() return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method static synthetic access$000()Lcom/gsma/services/nfc/SEController$Callbacks;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/gsma/services/nfc/SEController;->mCallback:Lcom/gsma/services/nfc/SEController$Callbacks;

    return-object v0
.end method

.method public static createSingleton(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    sget-object v0, Lcom/gsma/services/nfc/SEController;->mStaticInstance:Lcom/gsma/services/nfc/SEController;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/gsma/services/nfc/SEController;

    invoke-direct {v0, p0}, Lcom/gsma/services/nfc/SEController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gsma/services/nfc/SEController;->mStaticInstance:Lcom/gsma/services/nfc/SEController;

    .line 87
    :cond_0
    return-void
.end method

.method public static getDefaultController(Landroid/content/Context;)Lcom/gsma/services/nfc/SEController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const-string v0, "SEController"

    const-string v1, "getDefaultController(context) Version 4.0/4.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p0}, Lcom/gsma/services/nfc/SEController;->createSingleton(Landroid/content/Context;)V

    .line 148
    invoke-static {}, Lcom/gsma/services/nfc/SEController;->getInstance()Lcom/gsma/services/nfc/SEController;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultController(Landroid/content/Context;Lcom/gsma/services/nfc/SEController$Callbacks;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/gsma/services/nfc/SEController$Callbacks;

    .prologue
    .line 110
    const-string v0, "SEController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultController(context,cb)   cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p0}, Lcom/gsma/services/nfc/SEController;->createSingleton(Landroid/content/Context;)V

    .line 114
    if-eqz p1, :cond_0

    .line 115
    sget-object v0, Lcom/gsma/services/nfc/SEController;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/gsma/services/nfc/SEController;->runnable_callback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    sput-object p1, Lcom/gsma/services/nfc/SEController;->mCallback:Lcom/gsma/services/nfc/SEController$Callbacks;

    .line 120
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/gsma/services/nfc/SEController;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/gsma/services/nfc/SEController;->mStaticInstance:Lcom/gsma/services/nfc/SEController;

    return-object v0
.end method

.method private translateSettingString(Ljava/lang/String;)I
    .locals 8
    .param p1, "SEName"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "i":I
    iget-object v0, p0, Lcom/gsma/services/nfc/SEController;->mActiveSeMap:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 235
    .local v1, "compareString":Ljava/lang/String;
    const-string v5, "SEController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compare mActiveSeMap[ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    .end local v1    # "compareString":Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 239
    .restart local v1    # "compareString":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "compareString":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getActiveSecureElement()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    const-string v1, "SEController"

    const-string v2, "getActiveSecureElement()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/gsma/services/addon/NfcGsmaExtra;->getInstance()Lcom/gsma/services/addon/NfcGsmaExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/addon/NfcGsmaExtra;->getActiveSeValue()I

    move-result v0

    .line 169
    .local v0, "activeSe":I
    const-string v1, "SEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureElementSelector.getActiveSeValue() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->mActiveSeMap:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/gsma/services/nfc/SEController;->mActiveString:Ljava/lang/String;

    return-object v1
.end method

.method public setActiveSecureElement(Ljava/lang/String;)V
    .locals 4
    .param p1, "SEName"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v1, "SEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveSecureElement() SEName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-nez p1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 195
    const-string v1, "SEController"

    const-string v2, " throw new IllegalStateException , mNfcAdapter == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, " NFC Controller is not exist ,mNfcAdapter == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/gsma/services/nfc/SEController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 200
    const-string v1, "SEController"

    const-string v2, " throw new IllegalStateException , NFC is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, " NFC Controller is not enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_2
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/SEController;->translateSettingString(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "settingIndex":I
    const-string v1, "SEController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " settingIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Lcom/gsma/services/addon/NfcGsmaExtra;->getInstance()Lcom/gsma/services/addon/NfcGsmaExtra;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gsma/services/addon/NfcGsmaExtra;->setActiveSeValue(I)V

    goto :goto_0
.end method
