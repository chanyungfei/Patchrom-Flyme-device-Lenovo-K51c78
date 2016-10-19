.class Lcom/mediatek/mom/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEnabled:Z

.field private mUid:I

.field private r:I

.field private s:Lcom/mediatek/common/mom/IMobileConnectionCallback;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lcom/mediatek/mom/i;->mUid:I

    .line 47
    iput v1, p0, Lcom/mediatek/mom/i;->r:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 49
    iput-boolean v1, p0, Lcom/mediatek/mom/i;->mEnabled:Z

    .line 51
    return-void
.end method

.method public constructor <init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lcom/mediatek/mom/i;->mUid:I

    .line 47
    iput v1, p0, Lcom/mediatek/mom/i;->r:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 49
    iput-boolean v1, p0, Lcom/mediatek/mom/i;->mEnabled:Z

    .line 53
    iput p1, p0, Lcom/mediatek/mom/i;->mUid:I

    .line 54
    iput p2, p0, Lcom/mediatek/mom/i;->r:I

    .line 55
    iput-object p3, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 56
    iput-boolean v1, p0, Lcom/mediatek/mom/i;->mEnabled:Z

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    .line 89
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/mediatek/mom/i;->r:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 97
    iget-object v1, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    if-eqz v1, :cond_0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileConnectionCallback;->onConnectionEnded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    invoke-interface {v1}, Lcom/mediatek/common/mom/IMobileConnectionCallback;->onConnectionResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/mom/i;->mUid:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/mediatek/mom/i;->mEnabled:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/mom/i;->mEnabled:Z

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManagerControlToken {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/i;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/i;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/mom/i;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/i;->s:Lcom/mediatek/common/mom/IMobileConnectionCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
