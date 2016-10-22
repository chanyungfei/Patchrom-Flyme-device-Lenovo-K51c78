.class public Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;
.super Ljava/lang/Object;
.source "BearerDataInterfaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDataHeaderDetails"
.end annotation


# instance fields
.field public headerDataFields:I

.field public headerDataLength:I

.field public skipBits:I

.field public wholeLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataLength:I

    .line 52
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    .line 53
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    .line 54
    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->skipBits:I

    .line 55
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "dataLen"    # I
    .param p2, "wholelen"    # I
    .param p3, "fields"    # I
    .param p4, "skip"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataLength:I

    .line 66
    iput p2, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    .line 67
    iput p3, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    .line 68
    iput p4, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->skipBits:I

    .line 69
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "UserDataHeaderDetails "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ headerDataLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", wholeLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->wholeLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numFields = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->headerDataFields:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", skipBits = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/BearerDataInterfaces$UserDataHeaderDetails;->skipBits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
