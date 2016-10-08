.class public interface abstract Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;
.super Ljava/lang/Object;
.source "ISmsInterfaces.java"


# virtual methods
.method public abstract calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method public abstract convertSubmitpduToPdu([B)[B
.end method

.method public abstract decode7bitAscii([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation
.end method

.method public abstract decodeUtf16([BII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation
.end method

.method public abstract encodeTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation
.end method

.method public abstract encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation
.end method

.method public abstract makeCDMASmsRecordData(I[B)[B
.end method
