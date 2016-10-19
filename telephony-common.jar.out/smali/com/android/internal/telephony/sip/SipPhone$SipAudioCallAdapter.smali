.class abstract Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;
.super Landroid/net/sip/SipAudioCall$Listener;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SipAudioCallAdapter"
.end annotation


# static fields
.field private static final SACA_DBG:Z = true

.field private static final SACA_TAG:Ljava/lang/String; = "SipAudioCallAdapter"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p2, "x1"    # Lcom/android/internal/telephony/sip/SipPhone$1;

    .prologue
    .line 1202
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1265
    const-string v0, "SipAudioCallAdapter"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-void
.end method


# virtual methods
.method public onCallBusy(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallBusy: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    .line 1221
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    .line 1222
    return-void
.end method

.method protected abstract onCallEnded(I)V
.end method

.method public onCallEnded(Landroid/net/sip/SipAudioCall;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallEnded: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onCallEnded(I)V

    .line 1216
    return-void

    .line 1213
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract onError(I)V
.end method

.method public onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 2
    .param p1, "call"    # Landroid/net/sip/SipAudioCall;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->log(Ljava/lang/String;)V

    .line 1231
    packed-switch p2, :pswitch_data_0

    .line 1260
    :pswitch_0
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    .line 1262
    :goto_0
    return-void

    .line 1233
    :pswitch_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    goto :goto_0

    .line 1236
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    goto :goto_0

    .line 1239
    :pswitch_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    goto :goto_0

    .line 1243
    :pswitch_4
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    goto :goto_0

    .line 1246
    :pswitch_5
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    goto :goto_0

    .line 1249
    :pswitch_6
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    goto :goto_0

    .line 1252
    :pswitch_7
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    goto :goto_0

    .line 1255
    :pswitch_8
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;->onError(I)V

    goto :goto_0

    .line 1231
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method
