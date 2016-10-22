.class Lcom/android/internal/telephony/cdma/utk/UtkService$3;
.super Ljava/util/TimerTask;
.source "UtkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/utk/UtkService;->startUtkTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 0

    .prologue
    .line 2042
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$3;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2044
    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->sActiveInstance:Lcom/android/internal/telephony/cdma/utk/UtkService;
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$600()Lcom/android/internal/telephony/cdma/utk/UtkService;

    move-result-object v0

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2045
    return-void
.end method
