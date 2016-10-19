.class Lcom/mediatek/mom/q;
.super Lcom/mediatek/mom/PermissionHistoryBase;
.source "SourceFile"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPermissionName:Ljava/lang/String;

.field private mStatus:I

.field private mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JI)V
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    invoke-direct {p0, p4, p5, v0, v1}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 53
    iput p1, p0, Lcom/mediatek/mom/q;->mUserId:I

    .line 54
    iput-object p2, p0, Lcom/mediatek/mom/q;->mPackageName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/mediatek/mom/q;->mPermissionName:Ljava/lang/String;

    .line 56
    iput p6, p0, Lcom/mediatek/mom/q;->mStatus:I

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    if-ne p0, p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    instance-of v2, p1, Lcom/mediatek/mom/q;

    if-nez v2, :cond_2

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    check-cast p1, Lcom/mediatek/mom/q;

    .line 120
    iget v2, p0, Lcom/mediatek/mom/q;->mStatus:I

    invoke-virtual {p1}, Lcom/mediatek/mom/q;->getStatus()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/mediatek/mom/q;->mUserId:I

    invoke-virtual {p1}, Lcom/mediatek/mom/q;->getUserId()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/mediatek/mom/q;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mediatek/mom/q;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/mom/q;->mPermissionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mediatek/mom/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 124
    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/mom/q;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/mediatek/mom/q;->mStatus:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/mediatek/mom/q;->mUserId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 86
    .line 87
    iget v0, p0, Lcom/mediatek/mom/q;->mUserId:I

    add-int/lit16 v0, v0, 0x12b

    .line 88
    iget-object v1, p0, Lcom/mediatek/mom/q;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    mul-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lcom/mediatek/mom/q;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/q;->mPermissionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 92
    mul-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lcom/mediatek/mom/q;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_1
    mul-int/lit8 v0, v0, 0xd

    iget v1, p0, Lcom/mediatek/mom/q;->mStatus:I

    add-int/2addr v0, v1

    .line 96
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackagePermissionHistory {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/q;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/q;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/q;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/q;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/q;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/mom/q;->mPermissionName:Ljava/lang/String;

    return-object v0
.end method
