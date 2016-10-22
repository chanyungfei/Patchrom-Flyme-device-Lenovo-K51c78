.class public Lcom/mediatek/rns/RnsPolicy;
.super Ljava/lang/Object;
.source "RnsPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;,
        Lcom/mediatek/rns/RnsPolicy$UserPreference;
    }
.end annotation


# static fields
.field public static final POLICY_NAME_PREFERENCE:Ljava/lang/String; = "UserPreference"

.field public static final POLICY_NAME_ROVE_THRESHOLD:Ljava/lang/String; = "WifiRoveThreshold"


# instance fields
.field private mPreference:Lcom/mediatek/rns/RnsPolicy$UserPreference;

.field private mRoveThreshold:Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;


# direct methods
.method public constructor <init>(Lcom/mediatek/rns/RnsPolicy$UserPreference;)V
    .locals 0
    .param p1, "u"    # Lcom/mediatek/rns/RnsPolicy$UserPreference;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mediatek/rns/RnsPolicy;->mPreference:Lcom/mediatek/rns/RnsPolicy$UserPreference;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;)V
    .locals 0
    .param p1, "w"    # Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mediatek/rns/RnsPolicy;->mRoveThreshold:Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    .line 27
    return-void
.end method


# virtual methods
.method public getUserPreference()Lcom/mediatek/rns/RnsPolicy$UserPreference;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/rns/RnsPolicy;->mPreference:Lcom/mediatek/rns/RnsPolicy$UserPreference;

    return-object v0
.end method

.method public getWifiRoveThreshold()Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/rns/RnsPolicy;->mRoveThreshold:Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/rns/RnsPolicy;->mPreference:Lcom/mediatek/rns/RnsPolicy$UserPreference;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WifiRoveThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/rns/RnsPolicy;->mRoveThreshold:Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/mediatek/rns/RnsPolicy;->mPreference:Lcom/mediatek/rns/RnsPolicy$UserPreference;

    invoke-virtual {v1}, Lcom/mediatek/rns/RnsPolicy$UserPreference;->getMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " in="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/rns/RnsPolicy;->mRoveThreshold:Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveIn()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "out="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/rns/RnsPolicy;->mRoveThreshold:Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;

    invoke-virtual {v3}, Lcom/mediatek/rns/RnsPolicy$WifiRoveThreshold;->getRssiRoveOut()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
