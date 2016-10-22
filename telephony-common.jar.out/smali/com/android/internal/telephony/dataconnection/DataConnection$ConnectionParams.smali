.class Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionParams"
.end annotation


# instance fields
.field mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

.field mDefaultBearerConfig:Lcom/mediatek/internal/telephony/DefaultBearerConfig;

.field mInitialMaxRetry:I

.field mOnCompletedMsg:Landroid/os/Message;

.field mProfileId:I

.field mRetryWhenSSChange:Z

.field mRilRat:I

.field mTag:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIILcom/mediatek/internal/telephony/DefaultBearerConfig;ZLandroid/os/Message;)V
    .locals 7
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "defaultBearerConfig"    # Lcom/mediatek/internal/telephony/DefaultBearerConfig;
    .param p6, "retryWhenSSChange"    # Z
    .param p7, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    move-object v6, p7

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->initParams(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mDefaultBearerConfig:Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    invoke-virtual {v0, p5}, Lcom/mediatek/internal/telephony/DefaultBearerConfig;->copyFrom(Lcom/mediatek/internal/telephony/DefaultBearerConfig;)V

    .line 204
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V
    .locals 0
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "retryWhenSSChange"    # Z
    .param p6, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->initParams(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V

    .line 198
    return-void
.end method

.method private initParams(Lcom/android/internal/telephony/dataconnection/ApnContext;IIIZLandroid/os/Message;)V
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "initialMaxRetry"    # I
    .param p3, "profileId"    # I
    .param p4, "rilRadioTechnology"    # I
    .param p5, "retryWhenSSChange"    # Z
    .param p6, "onCompletedMsg"    # Landroid/os/Message;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 209
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mInitialMaxRetry:I

    .line 210
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    .line 211
    iput p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    .line 212
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 213
    iput-boolean p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRetryWhenSSChange:Z

    .line 214
    new-instance v0, Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/DefaultBearerConfig;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mDefaultBearerConfig:Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    .line 215
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInitialMaxRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mInitialMaxRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retryWhenSSChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRetryWhenSSChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " defaultBearerConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mDefaultBearerConfig:Lcom/mediatek/internal/telephony/DefaultBearerConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOnCompletedMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    # invokes: Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$000(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
