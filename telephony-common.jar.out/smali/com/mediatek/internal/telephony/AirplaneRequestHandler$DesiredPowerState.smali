.class Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
.super Ljava/lang/Object;
.source "AirplaneRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/AirplaneRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesiredPowerState"
.end annotation


# instance fields
.field private mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mPhoneId:I

.field final synthetic this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;I)V
    .locals 2
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 424
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    .line 416
    iput-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 417
    iput-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 426
    iput p2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    .line 427
    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;Lcom/android/internal/telephony/CommandsInterface$RadioState;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;
    .param p1, "x1"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isLteRadioReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->isNLteRadioReady()Z

    move-result v0

    return v0
.end method

.method private final isLteRadioReady()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 435
    const/4 v1, 0x0

    .line 436
    .local v1, "ready":Z
    iget v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 438
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eqz v2, :cond_4

    .line 439
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v2, :cond_1

    move v1, v3

    .line 440
    :goto_0
    if-nez v1, :cond_0

    .line 441
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    .line 454
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLteRadioAvaliable, ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$700(Ljava/lang/String;)V

    .line 455
    return v1

    :cond_1
    move v1, v4

    .line 439
    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v3

    :goto_2
    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    .line 448
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 449
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    goto :goto_1

    .line 451
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_6

    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_3
.end method

.method private final isNLteRadioReady()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 464
    const/4 v1, 0x0

    .line 465
    .local v1, "ready":Z
    iget v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 467
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eqz v2, :cond_4

    .line 468
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v2, :cond_1

    move v1, v3

    .line 469
    :goto_0
    if-nez v1, :cond_0

    .line 470
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 471
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    .line 484
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNLteRadioAvaliable, ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$700(Ljava/lang/String;)V

    .line 485
    return v1

    :cond_1
    move v1, v4

    .line 468
    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v3

    :goto_2
    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    .line 477
    :cond_4
    iget-object v2, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->this$0:Lcom/mediatek/internal/telephony/AirplaneRequestHandler;

    # getter for: Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->mPower:Z
    invoke-static {v2}, Lcom/mediatek/internal/telephony/AirplaneRequestHandler;->access$600(Lcom/mediatek/internal/telephony/AirplaneRequestHandler;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 478
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    goto :goto_1

    .line 480
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_6

    move v1, v3

    :goto_3
    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DesiredState [mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNLteState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/internal/telephony/AirplaneRequestHandler$DesiredPowerState;->mNLteState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
