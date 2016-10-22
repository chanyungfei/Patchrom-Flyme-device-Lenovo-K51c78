.class Lcom/mediatek/mom/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mName:Ljava/lang/String;

.field private r:I

.field private z:I


# direct methods
.method public constructor <init>(Lcom/mediatek/mom/j$a;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mom/x;->mName:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/mom/x;->z:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/mom/x;->r:I

    .line 54
    invoke-virtual {p1}, Lcom/mediatek/mom/j$a;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/x;->mName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/mediatek/mom/j$a;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mom/x;->z:I

    .line 56
    invoke-virtual {p1}, Lcom/mediatek/mom/j$a;->c()I

    move-result v0

    iput v0, p0, Lcom/mediatek/mom/x;->r:I

    .line 57
    return-void
.end method


# virtual methods
.method public H()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/x;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/mom/x;->r:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiverRecorder {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mom/x;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/x;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/mom/x;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
