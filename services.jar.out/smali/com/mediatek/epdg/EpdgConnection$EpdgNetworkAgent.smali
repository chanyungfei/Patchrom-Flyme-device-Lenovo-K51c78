.class Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "EpdgConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgNetworkAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnection;


# direct methods
.method constructor <init>(Lcom/mediatek/epdg/EpdgConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 8
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I

    .prologue
    .line 862
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move/from16 v7, p8

    .line 863
    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    .line 864
    return-void
.end method


# virtual methods
.method protected unwanted()V
    .locals 2

    .prologue
    .line 867
    const-string v0, "unwanted in EpdgNetworkAgent"

    invoke-virtual {p0, v0}, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;->log(Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/mediatek/epdg/EpdgConnection$EpdgNetworkAgent;->this$0:Lcom/mediatek/epdg/EpdgConnection;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/epdg/EpdgConnection;->sendMessage(I)V

    .line 869
    return-void
.end method
