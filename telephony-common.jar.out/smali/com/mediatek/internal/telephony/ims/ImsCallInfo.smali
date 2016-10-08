.class Lcom/mediatek/internal/telephony/ims/ImsCallInfo;
.super Ljava/lang/Object;
.source "ImsRILAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;
    }
.end annotation


# instance fields
.field mCallId:Ljava/lang/String;

.field mCallNum:Ljava/lang/String;

.field mIsConference:Z

.field mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mediatek/internal/telephony/ims/ImsCallInfo$State;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callNum"    # Ljava/lang/String;
    .param p3, "isConference"    # Z
    .param p4, "state"    # Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    .line 263
    iput-object p2, p0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 264
    iput-boolean p3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mIsConference:Z

    .line 265
    iput-object p4, p0, Lcom/mediatek/internal/telephony/ims/ImsCallInfo;->mState:Lcom/mediatek/internal/telephony/ims/ImsCallInfo$State;

    .line 266
    return-void
.end method
