.class Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
.super Lcom/android/internal/telephony/cdma/utk/ValueObject;
.source "CommandDetails.java"


# instance fields
.field public destinationId:I

.field public sourceId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ValueObject;-><init>()V

    return-void
.end method


# virtual methods
.method getTag()Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceIdentities: sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->sourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destinationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
