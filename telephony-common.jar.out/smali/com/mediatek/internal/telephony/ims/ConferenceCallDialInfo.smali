.class Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# instance fields
.field mClirMode:I

.field mIsVideoCall:Z

.field mParticipants:[Ljava/lang/String;

.field mResult:Landroid/os/Message;


# direct methods
.method public constructor <init>([Ljava/lang/String;IZLandroid/os/Message;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isVideoCall"    # Z
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mParticipants:[Ljava/lang/String;

    .line 256
    iput p2, p0, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mClirMode:I

    .line 257
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mIsVideoCall:Z

    .line 258
    iput-object p4, p0, Lcom/mediatek/internal/telephony/ims/ConferenceCallDialInfo;->mResult:Landroid/os/Message;

    .line 259
    return-void
.end method
