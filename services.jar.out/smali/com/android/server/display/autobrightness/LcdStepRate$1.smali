.class Lcom/android/server/display/autobrightness/LcdStepRate$1;
.super Landroid/os/Handler;
.source "LcdStepRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/autobrightness/LcdStepRate;->setEnabledLocked(ZLandroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/LcdStepRate;


# direct methods
.method constructor <init>(Lcom/android/server/display/autobrightness/LcdStepRate;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/server/display/autobrightness/LcdStepRate$1;->this$0:Lcom/android/server/display/autobrightness/LcdStepRate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    const-string v0, "LcdStepRate"

    const-string v1, "mHandler: on msg MSG_RESET_LCD_STEP_RATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 156
    :pswitch_0
    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->SLOW:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-static {v0}, Lcom/android/server/display/autobrightness/LcdStepRate;->scheduleStepRate(Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
