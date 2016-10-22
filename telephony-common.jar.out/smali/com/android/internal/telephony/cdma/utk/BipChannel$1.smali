.class Lcom/android/internal/telephony/cdma/utk/BipChannel$1;
.super Ljava/util/TimerTask;
.source "BipChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/utk/BipChannel;->startDataToReceiveTimer(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/BipChannel;

.field final synthetic val$caller:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipChannel;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel$1;->this$0:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel$1;->val$caller:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipChannel$1;->val$caller:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 245
    return-void
.end method
