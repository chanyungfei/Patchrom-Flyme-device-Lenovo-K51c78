.class public Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PcscfDiscoveryParam"
.end annotation


# instance fields
.field public apnType:Ljava/lang/String;

.field public cid:I

.field public onCompleteMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "contextId"    # I
    .param p4, "completeMsg"    # Landroid/os/Message;

    .prologue
    .line 4619
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4620
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->apnType:Ljava/lang/String;

    .line 4621
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->cid:I

    .line 4622
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$PcscfDiscoveryParam;->onCompleteMsg:Landroid/os/Message;

    .line 4623
    return-void
.end method
