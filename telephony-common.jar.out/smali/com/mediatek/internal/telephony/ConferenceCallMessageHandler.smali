.class public Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ConferenceCallMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;
    }
.end annotation


# static fields
.field public static final STATUS_ALERTING:Ljava/lang/String; = "alerting"

.field public static final STATUS_CONNECTED:Ljava/lang/String; = "connected"

.field public static final STATUS_CONNECT_FAIL:Ljava/lang/String; = "connect-fail"

.field public static final STATUS_DIALING_IN:Ljava/lang/String; = "dialing-in"

.field public static final STATUS_DIALING_OUT:Ljava/lang/String; = "dialing-out"

.field public static final STATUS_DISCONNECTED:Ljava/lang/String; = "disconnected"

.field public static final STATUS_DISCONNECTING:Ljava/lang/String; = "disconnecting"

.field public static final STATUS_MUTED_VIA_FOCUS:Ljava/lang/String; = "muted-via-focus"

.field public static final STATUS_ON_HOLD:Ljava/lang/String; = "on-hold"

.field public static final STATUS_PENDING:Ljava/lang/String; = "pending"

.field private static final TAG:Ljava/lang/String; = "ConferenceCallMessageHandler"


# instance fields
.field private mCallId:I

.field private mDuringEndPointTag:Z

.field private mIndex:I

.field private mMaxUserCount:I

.field private mPreTag:Ljava/lang/String;

.field private mTempVal:Ljava/lang/String;

.field private mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mCallId:I

    .line 60
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mDuringEndPointTag:Z

    .line 61
    iput v1, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mIndex:I

    .line 82
    return-void
.end method

.method private setMaxUserCount(Ljava/lang/String;)V
    .locals 1
    .param p1, "maxUserCount"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mMaxUserCount:I

    .line 241
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mTempVal:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 329
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUsers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUsers:Ljava/util/List;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .line 345
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mPreTag:Ljava/lang/String;

    .line 346
    return-void

    .line 332
    :cond_1
    const-string v0, "endpoint"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    if-eqz v0, :cond_2

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mDuringEndPointTag:Z

    goto :goto_0

    .line 334
    :cond_2
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mDuringEndPointTag:Z

    if-nez v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mTempVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->setDisplayText(Ljava/lang/String;)V

    .line 337
    const-string v0, "ConferenceCallMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user - DisplayText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_3
    const-string v0, "maximum-user-count"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mTempVal:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->setMaxUserCount(Ljava/lang/String;)V

    .line 340
    const-string v0, "ConferenceCallMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxUserCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->getMaxUserCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_4
    const-string v0, "status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mTempVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->setStatus(Ljava/lang/String;)V

    .line 343
    const-string v0, "ConferenceCallMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mCallId:I

    return v0
.end method

.method public getMaxUserCount()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mMaxUserCount:I

    return v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUsers:Ljava/util/List;

    return-object v0
.end method

.method public setCallId(I)V
    .locals 0
    .param p1, "callId"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mCallId:I

    .line 259
    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUsers:Ljava/util/List;

    .line 277
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 304
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mIndex:I

    .line 306
    new-instance v0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;-><init>(Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    .line 307
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    iget v1, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->setIndex(I)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    const-string v1, ""

    const-string v2, "entity"

    invoke-interface {p4, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->setEntity(Ljava/lang/String;)V

    .line 309
    const-string v0, "ConferenceCallMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user - entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEntity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mPreTag:Ljava/lang/String;

    .line 316
    return-void

    .line 310
    :cond_1
    const-string v0, "endpoint"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    const-string v1, ""

    const-string v2, "entity"

    invoke-interface {p4, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->setEndPoint(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mDuringEndPointTag:Z

    .line 313
    const-string v0, "ConferenceCallMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endpoint - entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler;->mUser:Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;

    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ConferenceCallMessageHandler$User;->getEndPoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
