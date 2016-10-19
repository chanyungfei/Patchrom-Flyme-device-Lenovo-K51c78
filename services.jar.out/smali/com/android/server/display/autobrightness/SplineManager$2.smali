.class Lcom/android/server/display/autobrightness/SplineManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SplineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/SplineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/SplineManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/autobrightness/SplineManager;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const-string v1, "AutoBrightnessLenovo.SplineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.server.display.intent.NIGHT_PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v2, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->setPendingSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    invoke-static {v1, v2}, Lcom/android/server/display/autobrightness/SplineManager;->access$100(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v1, "com.android.server.display.intent.DAY_PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v2, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->setPendingSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    invoke-static {v1, v2}, Lcom/android/server/display/autobrightness/SplineManager;->access$100(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    goto :goto_0

    .line 80
    :cond_2
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->isDayTime()Z
    invoke-static {v1}, Lcom/android/server/display/autobrightness/SplineManager;->access$200(Lcom/android/server/display/autobrightness/SplineManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v2, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->DAYTIME_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->setPendingSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    invoke-static {v1, v2}, Lcom/android/server/display/autobrightness/SplineManager;->access$100(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    .line 90
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->setNightProfileAlarm()V
    invoke-static {v1}, Lcom/android/server/display/autobrightness/SplineManager;->access$300(Lcom/android/server/display/autobrightness/SplineManager;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->setDayProfileAlarm()V
    invoke-static {v1}, Lcom/android/server/display/autobrightness/SplineManager;->access$400(Lcom/android/server/display/autobrightness/SplineManager;)V

    goto :goto_0

    .line 86
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v2, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->NIGHT_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->setPendingSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    invoke-static {v1, v2}, Lcom/android/server/display/autobrightness/SplineManager;->access$100(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    goto :goto_1

    .line 92
    :cond_5
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    # getter for: Lcom/android/server/display/autobrightness/SplineManager;->mPendingSpline:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    invoke-static {v1}, Lcom/android/server/display/autobrightness/SplineManager;->access$500(Lcom/android/server/display/autobrightness/SplineManager;)Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    move-result-object v1

    sget-object v2, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->INVALID_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    if-eq v1, v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    iget-object v2, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    # getter for: Lcom/android/server/display/autobrightness/SplineManager;->mPendingSpline:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    invoke-static {v2}, Lcom/android/server/display/autobrightness/SplineManager;->access$500(Lcom/android/server/display/autobrightness/SplineManager;)Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    move-result-object v2

    # invokes: Lcom/android/server/display/autobrightness/SplineManager;->setCurrentSpline(Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V
    invoke-static {v1, v2}, Lcom/android/server/display/autobrightness/SplineManager;->access$600(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)V

    .line 95
    iget-object v1, p0, Lcom/android/server/display/autobrightness/SplineManager$2;->this$0:Lcom/android/server/display/autobrightness/SplineManager;

    sget-object v2, Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;->INVALID_SPLINE:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    # setter for: Lcom/android/server/display/autobrightness/SplineManager;->mPendingSpline:Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;
    invoke-static {v1, v2}, Lcom/android/server/display/autobrightness/SplineManager;->access$502(Lcom/android/server/display/autobrightness/SplineManager;Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;)Lcom/android/server/display/autobrightness/SplineManager$SPLINE_TYPE;

    goto :goto_0
.end method
