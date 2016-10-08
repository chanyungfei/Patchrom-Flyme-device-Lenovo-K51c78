.class Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
.super Lcom/android/internal/telephony/sip/SipConnectionBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipConnection"
.end annotation


# static fields
.field private static final SCN_DBG:Z = true

.field private static final SCN_TAG:Ljava/lang/String; = "SipConnection"


# instance fields
.field private mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

.field private mIncoming:Z

.field private mOriginalNumber:Ljava/lang/String;

.field private mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mPeer:Landroid/net/sip/SipProfile;

.field private mSipAudioCall:Landroid/net/sip/SipAudioCall;

.field private mState:Lcom/android/internal/telephony/Call$State;

.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;)V
    .locals 1
    .param p2, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .param p3, "callee"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 950
    # invokes: Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    invoke-static {p1, p3}, Lcom/android/internal/telephony/sip/SipPhone;->access$1500(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .locals 1
    .param p2, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .param p3, "callee"    # Landroid/net/sip/SipProfile;
    .param p4, "originalNumber"    # Ljava/lang/String;

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    .line 943
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/sip/SipConnectionBase;-><init>(Ljava/lang/String;)V

    .line 849
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    .line 854
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection$1;-><init>(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    .line 944
    iput-object p2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 945
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    .line 946
    iput-object p4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    .line 947
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 843
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipAudioCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .param p1, "x1"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 843
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)Landroid/net/sip/SipProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1191
    const-string v0, "SipConnection"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return-void
.end method


# virtual methods
.method acceptCall()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 974
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->answerCall(I)V
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Landroid/net/sip/SipException;
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptCall(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 982
    return-void
.end method

.method dial()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 998
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$1600(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/sip/SipManager;->makeAudioCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall$Listener;I)Landroid/net/sip/SipAudioCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    invoke-virtual {v0, v1}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 1002
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOriginalNumber:Ljava/lang/String;

    return-object v0
.end method

.method getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 986
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 955
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->isMuted()Z

    move-result v0

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 962
    const/4 v0, 0x1

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method getSipAudioCall()Landroid/net/sip/SipAudioCall;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 993
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x3

    .line 1102
    const-class v5, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v5

    .line 1103
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangup: conn="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ": on phone "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1106
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    :goto_0
    return-void

    .line 1108
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 1109
    .local v1, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    if-eqz v1, :cond_1

    .line 1110
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 1111
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->endCall()V
    :try_end_1
    .catch Landroid/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1116
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    .line 1121
    monitor-exit v5

    goto :goto_0

    .end local v1    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1113
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Landroid/net/sip/SipException;
    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hangup(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1116
    .end local v0    # "e":Landroid/net/sip/SipException;
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public hangup(I)V
    .locals 8
    .param p1, "discRingingConnectionCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    .line 1128
    const-class v4, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v4

    .line 1132
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    :goto_0
    return-void

    .line 1134
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 1135
    .local v1, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    if-eqz v1, :cond_1

    .line 1136
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 1137
    invoke-virtual {v1}, Landroid/net/sip/SipAudioCall;->endCall()V
    :try_end_1
    .catch Landroid/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1142
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    :cond_2
    move v3, p1

    :cond_3
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    .line 1147
    monitor-exit v4

    goto :goto_0

    .end local v1    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    .end local p1    # "discRingingConnectionCause":I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1139
    .restart local p1    # "discRingingConnectionCause":I
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/net/sip/SipException;
    :try_start_3
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangup(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1142
    .end local v0    # "e":Landroid/net/sip/SipException;
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_5

    .end local p1    # "discRingingConnectionCause":I
    :cond_4
    :goto_1
    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local p1    # "discRingingConnectionCause":I
    :cond_5
    move p1, v3

    goto :goto_1
.end method

.method hold()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1005
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 1008
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v2, :cond_1

    .line 1009
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1010
    .local v0, "currentState":Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SipConnection.hold():mSipAudioCall is null, state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1011
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_0

    .line 1013
    monitor-exit v3

    .line 1026
    .end local v0    # "currentState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    return-void

    .line 1015
    .restart local v0    # "currentState":Lcom/android/internal/telephony/Call$State;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "unhold(): mSipAudioCall is null"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1025
    .end local v0    # "currentState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1019
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/net/sip/SipAudioCall;->holdCall(I)V
    :try_end_2
    .catch Landroid/net/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1025
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1022
    :catch_0
    move-exception v1

    .line 1023
    .local v1, "e":Landroid/net/sip/SipException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hold(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method initIncomingCall(Landroid/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "sipAudioCall"    # Landroid/net/sip/SipAudioCall;
    .param p2, "newState"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 966
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 967
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mAdapter:Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;

    invoke-virtual {p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;)V

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    .line 970
    return-void
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mIncoming:Z

    return v0
.end method

.method public separate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1153
    const-string v3, "separate"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1154
    const-class v4, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v4

    .line 1155
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-object v1, v3

    .line 1158
    .local v1, "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v5, :cond_1

    .line 1159
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot put conn back to a call in non-idle state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1187
    .end local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1155
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-object v1, v3

    goto :goto_0

    .line 1163
    .restart local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "separate: conn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mPeer:Landroid/net/sip/SipProfile;

    invoke-virtual {v5}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mOwner:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " back to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1169
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone;->access$1400(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->isInCallOrIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    # getter for: Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v3}, Lcom/android/internal/telephony/sip/SipPhone;->access$1700(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->isInCallOrIdle()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1170
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v5, "wrong state to separate call"

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1174
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1175
    .local v2, "originalPhone":Lcom/android/internal/telephony/Phone;
    # invokes: Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;
    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->access$1800(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 1176
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    # invokes: Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    invoke-static {v1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->access$1900(Lcom/android/internal/telephony/sip/SipPhone$SipCall;Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 1177
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v3, v0}, Landroid/net/sip/SipAudioCall;->setAudioGroup(Landroid/net/rtp/AudioGroup;)V

    .line 1181
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1184
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .end local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 1185
    .restart local v1    # "call":Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v3}, Landroid/net/sip/SipAudioCall;->startAudio()V

    .line 1186
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 1187
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1188
    return-void
.end method

.method setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->isMuted()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: prev muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Landroid/net/sip/SipAudioCall;->toggleMute()V

    .line 1058
    :cond_0
    return-void

    .line 1055
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1068
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipConnectionBase;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 1069
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mState:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method unhold(Landroid/net/rtp/AudioGroup;)V
    .locals 6
    .param p1, "audioGroup"    # Landroid/net/rtp/AudioGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1029
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 1032
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    if-nez v2, :cond_1

    .line 1033
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1034
    .local v0, "currentState":Lcom/android/internal/telephony/Call$State;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SipConnection.unhold():mSipAudioCall is null, state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->log(Ljava/lang/String;)V

    .line 1035
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_0

    .line 1037
    monitor-exit v3

    .line 1051
    .end local v0    # "currentState":Lcom/android/internal/telephony/Call$State;
    :goto_0
    return-void

    .line 1039
    .restart local v0    # "currentState":Lcom/android/internal/telephony/Call$State;
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "unhold(): mSipAudioCall is null"

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1050
    .end local v0    # "currentState":Lcom/android/internal/telephony/Call$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1043
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    invoke-virtual {v2, p1}, Landroid/net/sip/SipAudioCall;->setAudioGroup(Landroid/net/rtp/AudioGroup;)V

    .line 1044
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->mSipAudioCall:Landroid/net/sip/SipAudioCall;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/net/sip/SipAudioCall;->continueCall(I)V
    :try_end_2
    .catch Landroid/net/sip/SipException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1050
    :try_start_3
    monitor-exit v3

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "e":Landroid/net/sip/SipException;
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unhold(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
