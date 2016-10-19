.class public Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "CellBroadcastConfigInfo.java"


# instance fields
.field public channelConfigInfo:Ljava/lang/String;

.field public isAllLanguageOn:Z

.field public languageConfigInfo:Ljava/lang/String;

.field public mode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "channels"    # Ljava/lang/String;
    .param p3, "languages"    # Ljava/lang/String;
    .param p4, "allOn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->mode:I

    .line 10
    iput-object v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->channelConfigInfo:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->languageConfigInfo:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->isAllLanguageOn:Z

    .line 26
    iput p1, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->mode:I

    .line 27
    iput-object p2, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->channelConfigInfo:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->languageConfigInfo:Ljava/lang/String;

    .line 29
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->isAllLanguageOn:Z

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "ret":Ljava/lang/StringBuilder;
    const-string v1, "CellBroadcastConfigInfo: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->channelConfigInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, ", language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->isAllLanguageOn:Z

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/mediatek/internal/telephony/CellBroadcastConfigInfo;->languageConfigInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 42
    :cond_0
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
