.class Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressInfo"
.end annotation


# instance fields
.field mIntfName:Ljava/lang/String;

.field mLinkAddr:Landroid/net/LinkAddress;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p2, "intfName"    # Ljava/lang/String;
    .param p3, "linkAddr"    # Landroid/net/LinkAddress;

    .prologue
    .line 3206
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3207
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    .line 3208
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    .line 3209
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interfaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;->mIntfName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$AddressInfo;->mLinkAddr:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
