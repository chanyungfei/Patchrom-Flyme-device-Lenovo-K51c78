.class public Lcom/google/android/mms/pdu/MultimediaMessagePdu;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "MultimediaMessagePdu.java"


# instance fields
.field private mMessageBody:Lcom/google/android/mms/pdu/PduBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .param p1, "header"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 51
    iput-object p2, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    .line 52
    return-void
.end method


# virtual methods
.method public addTo(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 117
    return-void
.end method

.method public getBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateSent()J
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .param p1, "body"    # Lcom/google/android/mms/pdu/PduBody;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google/android/mms/pdu/PduBody;

    .line 79
    return-void
.end method

.method public setDate(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 154
    return-void
.end method

.method public setPriority(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 136
    return-void
.end method

.method public setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 2
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 98
    return-void
.end method
