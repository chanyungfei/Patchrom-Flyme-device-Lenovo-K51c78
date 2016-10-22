.class Landroid/widget/AnalogClockWidget$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnalogClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AnalogClockWidget;


# direct methods
.method constructor <init>(Landroid/widget/AnalogClockWidget;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Landroid/widget/AnalogClockWidget$1;->this$0:Landroid/widget/AnalogClockWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/AnalogClockWidget$1;->this$0:Landroid/widget/AnalogClockWidget;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    # setter for: Landroid/widget/AnalogClockWidget;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Landroid/widget/AnalogClockWidget;->access$002(Landroid/widget/AnalogClockWidget;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 169
    .end local v0    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/AnalogClockWidget$1;->this$0:Landroid/widget/AnalogClockWidget;

    # invokes: Landroid/widget/AnalogClockWidget;->onTimeChanged()V
    invoke-static {v1}, Landroid/widget/AnalogClockWidget;->access$100(Landroid/widget/AnalogClockWidget;)V

    .line 170
    iget-object v1, p0, Landroid/widget/AnalogClockWidget$1;->this$0:Landroid/widget/AnalogClockWidget;

    invoke-virtual {v1}, Landroid/widget/AnalogClockWidget;->invalidate()V

    .line 171
    return-void
.end method
