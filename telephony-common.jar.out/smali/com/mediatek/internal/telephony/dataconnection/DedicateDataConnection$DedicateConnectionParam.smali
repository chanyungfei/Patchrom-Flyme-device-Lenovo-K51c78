.class Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;
.super Ljava/lang/Object;
.source "DedicateDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DedicateConnectionParam"
.end annotation


# instance fields
.field public callState:Lcom/mediatek/internal/telephony/DedicateDataCallState;

.field public onCompletedMsg:Landroid/os/Message;

.field public param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

.field public reason:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;Landroid/os/Message;)V
    .locals 0
    .param p2, "enableDedicateBearerParam"    # Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->param:Lcom/android/internal/telephony/dataconnection/DcTracker$EnableDedicateBearerParam;

    .line 654
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 655
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Lcom/mediatek/internal/telephony/DedicateDataCallState;Landroid/os/Message;)V
    .locals 0
    .param p2, "dedicateDataCallState"    # Lcom/mediatek/internal/telephony/DedicateDataCallState;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->callState:Lcom/mediatek/internal/telephony/DedicateDataCallState;

    .line 664
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 665
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p2, "rea"    # Ljava/lang/String;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->this$0:Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object p3, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->onCompletedMsg:Landroid/os/Message;

    .line 659
    iput-object p2, p0, Lcom/mediatek/internal/telephony/dataconnection/DedicateDataConnection$DedicateConnectionParam;->reason:Ljava/lang/String;

    .line 660
    return-void
.end method
