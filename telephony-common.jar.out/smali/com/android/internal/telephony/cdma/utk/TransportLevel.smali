.class Lcom/android/internal/telephony/cdma/utk/TransportLevel;
.super Lcom/android/internal/telephony/cdma/utk/ValueObject;
.source "CommandDetails.java"


# instance fields
.field public port:I

.field public protocolType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ValueObject;-><init>()V

    .line 181
    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    .line 182
    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TRANSPORT_LEVEL:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransportLevel: protocolType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
