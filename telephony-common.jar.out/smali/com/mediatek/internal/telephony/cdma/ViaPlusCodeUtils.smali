.class public Lcom/mediatek/internal/telephony/cdma/ViaPlusCodeUtils;
.super Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;
.source "ViaPlusCodeUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ViaPlusCodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/DefaultPlusCodeUtils;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "ViaPlusCodeUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method


# virtual methods
.method public canFormatPlusCodeForSms()Z
    .locals 1

    .prologue
    .line 43
    const-string v0, "canFormatPlusCodeForSms"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v0

    return v0
.end method

.method public canFormatPlusToIddNdd()Z
    .locals 1

    .prologue
    .line 37
    const-string v0, "canFormatPlusToIddNdd"

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    return v0
.end method

.method public checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMccBySidLtmOff mccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeIddNddAddPlusCode number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeIddNddAddPlusCodeForSms number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 62
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replacePlusCodeForSms number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replacePlusCodeWithIddNdd number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/cdma/ViaPlusCodeUtils;->log(Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
