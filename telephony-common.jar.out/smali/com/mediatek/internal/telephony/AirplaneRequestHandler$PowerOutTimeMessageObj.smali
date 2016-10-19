.class final Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;
.super Ljava/lang/Object;
.source "AirplaneRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerOutTimeMessageObj"
.end annotation


# instance fields
.field public isAvailable:Z

.field public isPowerForModem:Z

.field public power:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;ZZ)V
    .locals 1
    .param p2, "power"    # Z
    .param p3, "isPowerForModem"    # Z

    .prologue
    .line 503
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-boolean p2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->power:Z

    .line 506
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->isPowerForModem:Z

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->isAvailable:Z

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;ZZLcom/mediatek/internal/telephony/AirplaneRequestHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$1;

    .prologue
    .line 498
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;-><init>(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 498
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->isAvailable(ZZ)Z

    move-result v0

    return v0
.end method

.method private isAvailable(ZZ)Z
    .locals 1
    .param p1, "power"    # Z
    .param p2, "isPowerForModem"    # Z

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->isAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->power:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->isPowerForModem:Z

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgObj [isPowerForModem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->isPowerForModem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->power:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$PowerOutTimeMessageObj;->isAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
