.class public Lcom/android/internal/telephony/cat/bip/TransportProtocol;
.super Ljava/lang/Object;
.source "TransportProtocol.java"


# instance fields
.field public portNumber:I

.field public protocolType:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    .line 56
    iput v0, p0, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    .line 59
    iput p1, p0, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->protocolType:I

    .line 60
    iput p2, p0, Lcom/android/internal/telephony/cat/bip/TransportProtocol;->portNumber:I

    .line 61
    return-void
.end method
