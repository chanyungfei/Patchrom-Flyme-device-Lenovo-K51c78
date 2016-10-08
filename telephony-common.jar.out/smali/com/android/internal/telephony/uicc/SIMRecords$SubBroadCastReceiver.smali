.class Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 3087
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/SIMRecords$1;

    .prologue
    .line 3087
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3089
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3090
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbWaitSub:Z
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1200(Lcom/android/internal/telephony/uicc/SIMRecords;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3091
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v2, "SubBroadCastReceiver receive ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3092
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbWaitSub:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1202(Lcom/android/internal/telephony/uicc/SIMRecords;Z)Z

    .line 3093
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SubBroadCastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # getter for: Lcom/android/internal/telephony/uicc/SIMRecords;->mPhbReady:Z
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$1300(Lcom/android/internal/telephony/uicc/SIMRecords;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->broadcastPhbStateChangedIntent(Z)V

    .line 3095
    :cond_0
    return-void
.end method
