.class final Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutoBrightnessLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutomaticBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;


# direct methods
.method public constructor <init>(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    .line 691
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 692
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 696
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 712
    :goto_0
    return-void

    .line 698
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # invokes: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateAmbientLux()V
    invoke-static {v0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$100(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V

    goto :goto_0

    .line 703
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # invokes: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->updateRuntimeConfigInternal()V
    invoke-static {v0}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$200(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)V

    goto :goto_0

    .line 707
    :pswitch_2
    const-string v0, "--AutoBrightnessLenovo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutomaticBrightnessHandler: send fake LUX msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F
    invoke-static {v2}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$300(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo$AutomaticBrightnessHandler;->this$0:Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;

    # getter for: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->mAmbientLux:F
    invoke-static {v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$300(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;)F

    move-result v1

    # invokes: Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->handleLightSensorEvent(JF)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;->access$400(Lcom/android/server/display/autobrightness/AutoBrightnessLenovo;JF)V

    goto :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
