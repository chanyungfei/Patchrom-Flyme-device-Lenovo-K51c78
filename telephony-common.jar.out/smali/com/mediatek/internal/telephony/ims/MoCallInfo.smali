.class Lcom/mediatek/internal/telephony/ims/MoCallInfo;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# instance fields
.field mCallee:Ljava/lang/String;

.field mClirMode:I

.field mIsEmergency:Z

.field mIsVideoCall:Z

.field mResult:Landroid/os/Message;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLandroid/os/Message;)V
    .locals 0
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "isEmergency"    # Z
    .param p4, "isVideoCall"    # Z
    .param p5, "result"    # Landroid/os/Message;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mCallee:Ljava/lang/String;

    .line 212
    iput p2, p0, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mClirMode:I

    .line 213
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mIsEmergency:Z

    .line 214
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mIsVideoCall:Z

    .line 215
    iput-object p5, p0, Lcom/mediatek/internal/telephony/ims/MoCallInfo;->mResult:Landroid/os/Message;

    .line 216
    return-void
.end method
